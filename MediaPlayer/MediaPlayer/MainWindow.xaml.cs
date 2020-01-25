using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using FrameLessWindow.Commands;
using System.Windows.Threading;
using MediaPlayer.Modles;
using System.Collections.ObjectModel;
using MediaPlayer.Services;
using Microsoft.WindowsAPICodePack.Dialogs;
using System.IO;
using System.Windows.Controls.Primitives;
using System.ComponentModel;

namespace MediaPlayer
{

    public enum ListStatus
    {
        SingleRepeat,
        Random,
        ListRepeat,
        ListSequence
    }
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : FrameLessWindow.FrameLessWindow
    {
        #region 变量
        public UserSetting US{ get; set; }
        MediaElement ME;
        TabControl TC;
        ScrollViewer SV;
        SideBarItem SB;

        List<string> Group = new List<string>(new string[] {"Type", "Album", "Artist" });
        List<string> Sort = new List<string>(new string[] { "Name", "TimeLength", "FilePath", "Date" });
        string[] SkinThems = {"Blue","Gray" };
        

        private DispatcherTimer MediaTimer;

        public ObservableCollection<MediaList> Playlist { get; set; }
        public ObservableCollection<SideBarItem> SideBarSources { get; set; }


        public WindowCommands PlayActionCommand { get; set; }
        public WindowCommands PlayerRegistCommands { get; set; }

        public WindowCommands SearchCommand { get; set; }
        public WindowCommands PopupListCommand { get; set; }
        public WindowCommands PageChangeCommand { get; set;}

        public WindowCommands MouseWheelCommand { get; set; }
        public WindowCommands CoverCommand { get; set; }
        public WindowCommands ListCommand { get; set; }
        public WindowCommands DataViewCommand { get; set; }

        public WindowCommands SkinChangeCommand { get; set; }
        public WindowCommands TopMaskCommand { get; set; }
        public WindowCommands ApplyModifyCommand { get; set; }

        ObservableCollection<Media> HistoryMedias = new ObservableCollection<Media>();
        ObservableCollection<Media> LocalMedias = new ObservableCollection<Media>();
        ObservableCollection<Media> LovelyMedias = new ObservableCollection<Media>();
        public ObservableCollection<string> SearchHistory { get; set; }


        #endregion


        public MainWindow()
        {
            
            SideBarSources = new ObservableCollection<SideBarItem>();
            Playlist = new ObservableCollection<MediaList>();
            SearchHistory = new ObservableCollection<string>();
            LocalMedias = new ObservableCollection<Media>();

            if (!Directory.Exists("./Data"))
                Directory.CreateDirectory("./Data");

            XmlManager xmlm = new XmlManager("./Data/UserSetting.xml");
            US = xmlm.GetUserSetting();
            if (US.IsLoadSuccessed == false)
            {
                xmlm.OpenInner("Data.UserSetting.xml");
                US = xmlm.GetUserSetting();
            }

            PlayActionCommand = new WindowCommands
            {
                Actor = new Action<object>(PlayerAction)
            };

            PlayerRegistCommands = new WindowCommands
            {
                Actor = new Action<object>(PlayerRegist)
            };

            PopupListCommand = new WindowCommands
            {
                Actor = new Action<object>(ShowPopupList)
            };

            SearchCommand = new WindowCommands
            {
                Actor = new Action<object>(SearchTarget)
            };

            PageChangeCommand = new WindowCommands();
            PageChangeCommand.Actor = new Action<object>(PageChange);

            MouseWheelCommand = new WindowCommands();
            MouseWheelCommand.Actor = new Action<object>(MouseWheelFunc);

            CoverCommand = new WindowCommands();
            CoverCommand.Actor = new Action<object>(CoverSetter);

            ListCommand = new WindowCommands();
            ListCommand.Actor = new Action<object>(ListManager);

            SkinChangeCommand = new WindowCommands();
            SkinChangeCommand.Actor = new Action<object>(ChangeSkin);

            TopMaskCommand = new WindowCommands();
            TopMaskCommand.Actor = new Action<object>(TopMaskSlector);

            ApplyModifyCommand = new WindowCommands
            {
                Actor = new Action<object>(ApplyModify)
            };

            DataViewCommand = new WindowCommands
            {
                Actor = new Action<object>(DataViewFunc)
        };

            InitializeComponent();
            this.DataContext = this;
            this.Loaded += MainWindow_Loaded;
            this.Closing += MainWindow_Closing;
        }

        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            US.Volume = ME.Volume;
            US.ListStates = (int)PlayListMode;
            ME.Close();
            SaveList();
            //base.Closing();
        }

        private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            //Console.WriteLine(ImageManager.FromPath("C:\\Program Files\\Common Files\\Autodesk Shared\\PeoplePower\\4.0\\Populate\\populateweb\\files\\1104.png"));

            //载入边侧菜单
            XmlManager ml = new XmlManager("Data.SideBarXMLFile.xml", true);
            ml.GetSideBarData(SideBarSources);
            //载入歌单
            
            LoadList();
            //SearchTarget(new object[] { "ReLoadLocalMedias", "000" });

            PlayListMode = (ListStatus)System.Convert.ToInt32(US.ListStates);
            //XmlManager.SaveSongList("./Qt.xml",Playlist);
            MediaTimer = new DispatcherTimer();
            MediaTimer.Interval=TimeSpan.FromMilliseconds(666);
            MediaTimer.Tick += MediaTimer_Tick;
            if (!RunCheck.HasMediaPlayer(10))
            {
                MessageBox.Show("未检测到Windows Media Player 10 或以上版本，播放功能将不可用，请安装后再运行本软件！");
            }
        }


        #region Player处理函数

        private void Player_MediaFailed(object sender, ExceptionRoutedEventArgs e)
        {
            IsPlayErrored = true;
            IsPaused = true;
            if (CurrentMedia != null) CurrentMedia.IsValid = false;
            //Console.WriteLine(e.ErrorException.Message);
            ChangeResource(true, false);
        }

        private void Player_MediaEnded(object sender, RoutedEventArgs e)
        {
            ME.Close();
            
            CurrentMedia.IsPlaying = false;
            MediaTimer.Stop();

            ChangeResource(true,false);

        }

        private void Player_MediaOpened(object sender, RoutedEventArgs e)
        {
            Reset();
            if (ME.LoadedBehavior != MediaState.Manual)
                ME.LoadedBehavior = MediaState.Manual;
            if(!ME.ScrubbingEnabled )
                ME.ScrubbingEnabled = true;
            ME.Position = TimeSpan.FromTicks(0);
            TotalDuration = Player.NaturalDuration;
            switch (US.OpenBehavior)
            {
                case MediaState.Manual:
                    break;
                case MediaState.Play:
                    //ME.Play();
                    IsStoped = false;
                    IsPaused = false;
                    break;
                case MediaState.Close:
                    break;
                case MediaState.Pause:
                    ME.Pause();
                    IsPaused = true;
                    break;
                case MediaState.Stop:
                    ME.Close();
                    IsStoped = true;
                    break;
                default:
                    //ME.Play();
                    IsStoped = false;
                    IsPaused = false;
                    break;
            }
            MediaTimer.Start();
            IsPlayErrored = false;
            if (CurrentMedia.TimeLength==null || CurrentMedia.TimeLength == "")
            {
                if(ME.NaturalDuration.HasTimeSpan)
                    CurrentMedia.TimeLength = ME.NaturalDuration.TimeSpan.TotalSeconds.ToString();
            }
            HistoryMedias.Remove(CurrentMedia);
            HistoryMedias.Insert(0, CurrentMedia);
        }

        public void Reset()
        {
            CurrentPosition = TimeSpan.Zero;
            TotalDuration = new Duration(TimeSpan.Zero);
            IsStoped = true;
            IsPaused = false;
        }

        private void MediaTimer_Tick(object sender, EventArgs e)
        {
            CurrentPosition = Player.Position;

        }            
        
        #endregion

        #region Commands响应

        public void DataViewFunc(object a)
        {

        }

        public void ChangeSkin(object Theme)
        {
            if(Theme != null)
            {
                if( Theme is string)
                {
                    US.SkinIndex++;
                    if (US.SkinIndex >= SkinThems.Length) US.SkinIndex = 0;
                    //var FS = Application.Current.Resources.MergedDictionaries.ElementAt(0);
                    try
                    {
                        ResourceDictionary TargetTheme = new ResourceDictionary()
                        {
                            Source = new Uri(@"MediaPlayer;component/Styles/Themes/" + SkinThems[US.SkinIndex]+".xaml",UriKind.Relative)
                        };
                    
                        Application.Current.Resources.MergedDictionaries.RemoveAt(0);
                        Application.Current.Resources.MergedDictionaries.Insert(0, TargetTheme);
               
                    }catch(Exception e)
                    {

                        Console.WriteLine("应用皮肤主题："+ SkinThems[US.SkinIndex] + " 错误!\n"+e.Message);
                    }
 }
            }
        }

        public void ListManager(object cmd)
        {
            //Console.WriteLine("List Manager"+cmd.ToString());
            if (cmd != null)
            {
                object[] cmds = cmd as object[];
                if(cmds != null)
                {
                  var scmd = cmds[0] as string;
                  var tcmd = cmds[1] as SideBarItem;
                  var smd  = cmds[1] as Media;

                    switch (scmd)
                    {
                        case "Delete":
                            Playlist.Remove(tcmd.Medias);
                            SideBarSources.Remove(tcmd);
                            TopMask = Visibility.Collapsed;
                            break;
                        case "Rename":
                            tcmd.Title = tcmd.Medias.Name;
                            break;
                        case "CheckModle":
                            CheckMode = ! CheckMode;
                            break;
                        case "CheckThis":
                            smd.IsChecked = !smd.IsChecked;
                            break;
                        case "DeleteThis":
                            SB.Medias.List.Remove(smd);
                            break;
                        case "DeleteThem":
                            for (int i = SB.Medias.List.Count-1;i>=0;i--)
                            {
                                if (SB.Medias.List[i].IsChecked) SB.Medias.List.RemoveAt(i);
                            }
                           
                            break;
                        case "AddTo":
                            tcmd = cmds[2] as SideBarItem;
                            tcmd.Medias.List.Add(smd);
                            CheckMode = false;
                            break;
                        case "AddThemTo":
                            if (SB != null)
                            {
                                foreach (var item in SB.Medias.List)
                                {
                                    if (item.IsChecked)
                                    {
                                        tcmd.Medias.List.Insert(0, item);
                                        item.IsChecked = false;
                                    }

                                }
                                CheckMode = false;
                            }
                            break;
                        case "CurrentRemove":
                            CurrentList.List.Remove(smd);
                            break;
                        case "PlayNow":
                            if (!CurrentList.List.Contains(smd)) CurrentList.List.Insert(0, smd);
                            PlayTarget(smd);
                            break;
                        case "PlayNext":
                            CurrentList.List.Remove(smd);
                            CurrentList.List.Insert(1,smd);
                            break;
                        case "PlayAll":
                            CurrentList = tcmd.Medias;
                            PlayTarget(CurrentList.List.First());
                            break;
                        case "SelectedAll":
                            foreach (var item in SB.Medias.List)
                            {
                                item.IsChecked = true;
                            }
                            break;
                        case "SelectedReavers":
                            foreach (var item in SB.Medias.List)
                            {
                                item.IsChecked =! item.IsChecked;
                            }
                            break;
                        case "SortBy":
                            if (SB.Medias.SortBy == null || SB.Medias.SortBy == "")
                                SB.Medias.SortBy = Sort[0];
                            else
                            {
                                int i = Sort.IndexOf(SB.Medias.SortBy);
                                i++;
                                if (i >= Sort.Count) i = 0;
                                SB.Medias.SortBy = Sort[i];
                            }
                            ApplyModify(cmds[1]);
                            break;
                        case "SortDirection":
                            if (SB.Medias.SortDirection == ListSortDirection.Ascending)
                                SB.Medias.SortDirection = ListSortDirection.Descending;
                            else
                                SB.Medias.SortDirection = ListSortDirection.Ascending;
                            ApplyModify(cmds[1]);
                            break;
                        case "GroupBy":
                            if (SB.Medias.GroupBy == null || SB.Medias.GroupBy == "")
                                SB.Medias.GroupBy = Group[0];
                            else
                            {
                                int i = Group.IndexOf(SB.Medias.GroupBy);
                                i++;
                                if (i >= Group.Count) i = 0;
                                SB.Medias.GroupBy = Group[i];
                            }
                            ApplyModify(cmds[1]);
                            break;
                        case "NewList":
                            ListView lv = null;
                            if (cmds[1] is ListViewItem)
                            {
                                var lvi = cmds[1] as ListViewItem;
                                var t = FindElement(lvi, null, typeof(ListView), false);
                                if (t == null) return;
                                lv = (ListView)t;
                            }
                            else
                                lv = cmds[1] as ListView;

                            SideBarItem ns = new SideBarItem()
                            {
                                Title = "歌单 " + (int)(DateTime.Now - TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1))).TotalSeconds,
                                IsCurrent = true,
                                IsMenuable = true,
                                Interactiveable = true,
                                Icon = "e61a",
                                Medias = new MediaList()
                                {
                                    CreateDate = DateTime.Now.ToLocalTime().ToString(),
                                    List = new ObservableCollection<Media>()
                                }
                            };
                            ns.TabIndex = 0;
                            ns.Medias.Name = ns.Title;
                            SideBarSources.Add(ns);
                            Playlist.Add(ns.Medias);
                            lv.SelectedIndex = lv.Items.Count - 1;

                            TopMaskSlector("ShowModifyMask");
                            break;
                    }
                }
                else
                {
                    string ccmd = (string)cmd;
                    switch (ccmd)
                    {
                        case "LrcUp01":
                            CurrentMedia.LrcOffset += 0.1;
                            break;
                        case "LrcUp05":
                            CurrentMedia.LrcOffset += 0.5;
                            break;
                        case "LrcDown01":
                            CurrentMedia.LrcOffset -= 0.1;
                            break;
                        case "LrcDown05":
                            CurrentMedia.LrcOffset -= 0.5;
                            break;
                        case "LrcReset":
                            CurrentMedia.LrcOffset = 0;
                            break;

                        case "ClearSelected":
                            foreach (var item in SB.Medias.List)
                            {
                                item.IsChecked = false;
                            }
                            break;

                    }
                }
            }
        }

        public void CoverSetter(object target)
        {
            if(target!=null)
            {
                if (target is MediaList)
                {
                    CommonOpenFileDialog cof = new CommonOpenFileDialog();
                    cof.IsFolderPicker = false;
                    cof.Filters.Add(new CommonFileDialogFilter("所有文件","*.*"));
                    cof.Filters.Add(new CommonFileDialogFilter("PNG图片",".png"));
                    cof.Filters.Add(new CommonFileDialogFilter("JPG图片",".jpg"));
                    cof.Filters.Add(new CommonFileDialogFilter("BMP位图",".bmp"));
                    if (cof.ShowDialog() == CommonFileDialogResult.Ok)
                    {
                        MediaList ML = (MediaList)target;
                        ML.Cover = ImageManager.FromPath(cof.FileName);
                    }
                }
                else if (target is string)
                {
                    if (CurrentMedia == null) return;
                    var cmd = (string)target;

                    CommonOpenFileDialog cof = new CommonOpenFileDialog();
                    cof.IsFolderPicker = false;

                    switch (cmd)
                    {
                        case "MediaCover":
                            cof.Filters.Clear();
                            cof.Filters.Add(new CommonFileDialogFilter("PNG图片", ".png"));
                            cof.Filters.Add(new CommonFileDialogFilter("JPG图片", ".jpg"));
                            cof.Filters.Add(new CommonFileDialogFilter("BMP位图", ".bmp"));
                            cof.Filters.Add(new CommonFileDialogFilter("所有文件", "*.*"));
                            if (cof.ShowDialog() == CommonFileDialogResult.Ok)
                            {
                                CurrentMedia.Cover = ImageManager.FromPath(cof.FileName);
                            }
                            break;
                        case "MediaLrc":
                            cof.Filters.Clear();
                            cof.Filters.Add(new CommonFileDialogFilter("LRC歌词", ".lrc"));
                            if (cof.ShowDialog() == CommonFileDialogResult.Ok)
                            {
                                CurrentMedia.Lrc = FileManager.GetString(cof.FileName);
                            }
                            break;
                        case "UserImage":
                            cof.Filters.Clear();
                            cof.Filters.Add(new CommonFileDialogFilter("常见图片", "*.png|*.jpg|*.bmp"));
                            cof.Filters.Add(new CommonFileDialogFilter("PNG图片", ".png"));
                            cof.Filters.Add(new CommonFileDialogFilter("JPG图片", ".jpg"));
                            cof.Filters.Add(new CommonFileDialogFilter("BMP位图", ".bmp"));
                            cof.Filters.Add(new CommonFileDialogFilter("所有文件", "*.*"));
                            if (cof.ShowDialog() == CommonFileDialogResult.Ok)
                            {
                                US.UserImage = ImageManager.FromPath(cof.FileName);
                            }
                            break;
                        case "PickPath":
                            cof.Filters.Clear();
                            cof.IsFolderPicker = true;
                            if (cof.ShowDialog() == CommonFileDialogResult.Ok)
                            {
                                US.ListenPath.Add(cof.FileName);
                            }
                            break;
                    }
                }
                
            }
        }

        public void PlayerAction(object parameter)
        {
            
            if(parameter != null)
            {
                if(parameter is string)
                {
                    string cmd = (string)parameter;
                    switch (cmd)
                    {
                        case "Preview":
                            ChangeResource(false,true);
                            break;
                        case "Next":
                            ChangeResource(true,true);
                            break;
                        case "PlayOrPuase":
                            PlayPuase();
                            break;
                        case "PlayType":
                            PlayTypeChange();
                            break;
                        case "DisplayStatus":
                            if (CurrentMedia != null)
                            {
                                if (IsMediaVisible == Visibility.Collapsed)
                                {
                                    IsMediaVisible = Visibility.Visible;
                                }
                                else IsMediaVisible = Visibility.Collapsed;

                                if (CurrentMedia.Type == ".mp3")
                                {
                                    SV.Visibility = Visibility.Visible;
                                    ME.Visibility = Visibility.Collapsed;
                                }
                                else
                                {
                                    ME.Visibility = Visibility.Visible;
                                    SV.Visibility = Visibility.Collapsed;
                                }

                            }


                            break;
                        case "MarkLovely":
                            //if (CurrentMedia != null) CurrentMedia.IsLovely = !CurrentMedia.IsLovely;
                            
                           LovelyMedias.Remove(CurrentMedia);
                            if (CurrentMedia.IsLovely) LovelyMedias.Insert(0, CurrentMedia);
                            
                            break;
                    }

                }
                else if (parameter is object[])
                {
                    var ps = parameter as object[];

                    switch ((string)ps[0])
                    {
                        case "PlayThis":
                            //在选择模式下将双击播放变为双击勾选
                            if (CheckMode)
                            {
                                 ListManager(new object[2] { "CheckThis", ps[1] });
                                return;
                            }
                           Media md =(Media) ps[1];
                           SideBarItem sd = (SideBarItem)ps[2];
                            if (CurrentList == null)
                            {
                                CurrentList = new MediaList()
                                {
                                    Name = (new Random()).Next().ToString(),
                                    CreateDate = DateTime.Now.ToString()
                                };
                                CurrentList.List.Add(md);
                            }
                            else
                            {

                                if (CurrentList.Name != sd.Medias.Name)
                                {
                                    if (!sd.IsMenuable)//用户创建的只有歌单，是允许有菜单的，系统默认的是没有菜单的
                                    {
                                        //播放 历史记录、本地媒体 列表中的媒体，将其加入到当前播放列表
                                        CurrentList.List.Remove(md);
                                        CurrentList .List .Insert(0,md);
                                    }
                                    //切换播放列表
                                    else CurrentList = sd.Medias;
                                }
                            }
                            PlayTarget(md);
                           break;
                        case "MarkLovely":
                            Media tm =(Media)ps[1];

                            tm.IsLovely = !tm.IsLovely;
                            LovelyMedias.Remove(tm);
                            if (tm.IsLovely)
                            {
                                LovelyMedias.Insert(0, tm);
                            }
                            break;
                        case "PlayCurrent":
                            Media pmd = (Media)ps[1];
                            PlayTarget(pmd);
                            break;
                    }
                }
                
            }
           
        }

        public void PlayerRegist(object value)
        {

            if(value != null)
            {
                if(value is MediaElement)
                {
                    ME = value as MediaElement;
                    if (ME == null)
                    {
                        MessageBox.Show("获取必要的内部组件引用出错，将退出程序");
                        Close();
                    }
                    ME.MediaOpened += Player_MediaOpened;
                    ME.MediaEnded += Player_MediaEnded;
                    ME.MediaFailed += Player_MediaFailed;
                    ME.LoadedBehavior = MediaState.Manual;
                    ME.Volume = US.Volume;
                }
                else if(value is TabControl)
                {
                    TC = (TabControl)value;
                    if(TC == null)
                    {
                        MessageBox.Show("获取必要的内部组件引用出错，将退出程序");
                        Close();
                    }
                }
                else if (value is ScrollViewer)
                {
                    SV = (ScrollViewer)value;
                    if (SV == null)
                    {
                        MessageBox.Show("获取必要的内部组件引用出错，将退出程序");
                        Close();
                    }
                   
                }
            }

        }

        public void ShowPopupList(object target)
        {
            if(target!=null && target is ListView)
            {
                ListView lv = (ListView)target;
               
                var cl = from c in Playlist where c.IsPlaying == true select c;
                if (cl != null)
                {
                   
                    lv.ItemsSource = cl.First().List;
                }
                //lv.ItemsSource = FavestMedia;
            }
        }
        
        public void SearchTarget(object key)
        {
            if(key !=null)
            {
                if(key is object[])
                {
                    var sr = (object[])key;
                    
                    string cmd = (string)sr[0];
                    switch (cmd)
                    {
                        case "FindLocalFiles":
                            foreach (var item in US.ListenPath)
                            {
                                //FileManager.SearchFiles(item, LocalMedia, US.MediaTypes);
                            }
                        
                            break;
                        case "FindInList":

                            break;
                        case "GlobalSearch":
                            string skey = sr[1] as string;
                            ListView rs = sr[2] as ListView;
                            if (skey == "") rs.ItemsSource = null;
                            //SearchHistory.Insert(0, keyword[1]);
                           else rs.ItemsSource = (from t in LocalMedias where t.Name.IndexOf(skey.Replace("\n","").Trim(' ')) >= 0 select t);

                            break;
                        case "ReLoadLocalMedias":
                            //var ll = GetTargetList("本地媒体");
                            List<Media> llm = new List<Media>();
                            foreach (var subpath in US.ListenPath)
                            {
                                FileManager.SearchFiles(subpath, llm, US.MediaTypes.ToUpper());
                            }
                            var cll = LocalMedias;
                            LocalMedias.Clear();
                            ObservableCollection<Media> mdl = new  ObservableCollection<Media>();
                            foreach (var item in llm)
                            {
                                bool find = false;
                                foreach (var isub in cll)
                                {
                                    if (isub.FilePath == item.FilePath)
                                    {
                                        find = true;
                                        //if(isub.Name!=item.Name)
                                        mdl.Add(isub);
                                        break;
                                    }
                                }
                                if (!find)
                                    mdl.Add(item);
                            }
                            var sbi = (SideBarItem)sr[1];
                            sbi.Medias.List = mdl;
                            LocalMedias = sbi.Medias.List;
                            ApplyModify(sr[2]);
                            break;
                    }
                }
                else if(key is string)
                {

                }
            }

        }
        
        //UnUsed
        public void PageChange(object parameter)
        {
            if(parameter!= null && parameter is SideBarItem)
            {
                SideBarItem sbi = (SideBarItem)parameter;
                //CurrentList = null;
                //CurrentList = GetTargetList(sbi.Title);
            }
        }

        public void MouseWheelFunc(object ListenTarget)
        {
            if(ListenTarget != null && ListenTarget is Grid)
            {
                var ach = ((Grid)ListenTarget).ActualHeight;
                DependencyObject target = (DependencyObject)ListenTarget;
                do
                {
                    target = VisualTreeHelper.GetParent(target);
                    
                } while (target.GetType() != typeof(ScrollViewer));
                ScrollViewer sc = (ScrollViewer)target;
                var tr =((Visual)ListenTarget).TransformToAncestor((Visual)target);
                var pt = tr.Transform(new Point(0, 0));
                if (pt.Y + ach <= 0) ShowListTitleContorlBar =true;
                else ShowListTitleContorlBar= false;
                //Console.WriteLine(sc.VerticalOffset);
            }
        }
        
        public void TopMaskSlector(object indexs)
        {
            if (indexs != null)
            {
                
                if(indexs is string)
                {
                    string cmd = (string)indexs;
                    switch (cmd)
                    {
                        case "CloseTopMask": TopMask = Visibility.Collapsed;

                            break;
                        case "ShowSettingMask":
                            TopMaskType = 1;
                            TopMaskSubType = 1;
                            TopMask = Visibility.Visible;
                            break;
                        case "ShowUserMask":
                            TopMaskType = 1;
                            TopMaskSubType = 0;
                            TopMask = Visibility.Visible;
                            break;
                        case "ShowDeleteMask":
                            TopMaskType = 2;
                            TopMask = Visibility.Visible;
                            break;
                        case "ShowModifyMask":
                            TopMaskType = 0;
                            TopMask = Visibility.Visible;
                            break;
                        case "ShowMediaMask":
                            TopMaskType = 3;
                            TopMask = Visibility.Visible;
                            break;
                    }
                }
                else if(indexs is object[])
               {
                    string cmd = (string)(indexs as object[])[0];
                    string obj = (string)(indexs as object[])[1];
                    if(cmd == "ShowMediaMask")
                    {

                    }
                
                }
            }
        }
        
        public void ApplyModify(object source)
        {
            if (source != null)
            {
                if(source is TabItem)
                {
                    MultiBindingExpression be = BindingOperations.GetMultiBindingExpression(((TabItem)source),TabItem.DataContextProperty);
                    be.UpdateTarget();
                    //执行源更新
                }else if ( source is Grid)
                {
                    BindingOperations.GetBindingExpression(((Grid)source),Grid.DataContextProperty).UpdateTarget();
                    BindingOperations.GetBindingExpression(((Grid)source),Grid.TagProperty).UpdateTarget();
                }else if ( source is ListView)
                {
                    BindingOperations.GetBindingExpression((ListView)source,ListView.ItemsSourceProperty).UpdateTarget();
                    
                }
                else
                {
                    var obs = source as object[];
                    string cmd = obs[0] as string;
                    switch (cmd)
                    {
                        case "SideBar":
                            //将更改后的数据应用到源
                            SideBarItem A, B;
                            A = obs[1] as SideBarItem;
                            B = obs[2] as SideBarItem;
                            A.Medias.Name = B.Medias.Name;
                            A.Medias.Cover = B.Medias.Cover;
                            A.Medias.Tag = B.Medias.Tag;
                            A.Medias.Summary = B.Medias.Summary;
                            A.Title = A.Medias.Name;
                            TopMask = Visibility.Collapsed;
                            break;
                        case "ChangeInfo":
                            var tmd = obs[1] as Media;
                            Media smd = obs[2] as Media;
                            smd.Album = tmd.Album;
                            smd.Artist = tmd.Artist;
                            smd.Cover = tmd.Cover;
                            smd.Name = tmd.Name;
                            TopMaskSlector("CloseTopMask");
                            break;
                        case "RemovePath":
                            var path = obs[1] as string;
                            US.ListenPath.Remove(path);
                            break;
                        case "CancelView":
                            if (!(bool)obs[1])
                            {
                                SB.Medias.GroupBy = "";
                                SB.Medias.SortBy = "";
                                ApplyModify(obs[2]);
                            }

                            break;
                    }
                }
            }
        }
        
        #endregion

        public void PlayTarget(Media md)
        {
            if (!IsPaused)
            {
                IsStoped = true;
                IsPaused = true;
                ME.Close();
            }

            if(CurrentMedia!=null)
                CurrentMedia.IsPlaying = false;
            else
            {
                foreach (var item in LocalMedias)
                {
                    if (item.IsPlaying == true)
                    {
                        item.IsPlaying = false;
                        break;
                    }
                }
            }
            
            md.IsPlaying = true;
            CurrentMedia = md;
            ME.Source = new Uri(md.FilePath);
            ME.Play();
            IsStoped = false;
            IsPaused = false;
        }

        public void PlayPuase()
        {
            if (CurrentMedia == null || CurrentMedia.FilePath == null ) return;
            if (IsPaused)
            {
                if (IsStoped)
                {
                    ME.Source = new Uri(CurrentMedia.FilePath);
                    IsStoped = false;
                }
                IsPaused = false; MediaTimer.Start(); ME.Play();
            }
            else
            {
                ME.Pause(); IsPaused = true; MediaTimer.Stop();
            }
        }

        public void PlayTypeChange()
        {
            int index = (int)PlayListMode;
            index++;
            if (index >= 4) index = 0;
            PlayListMode =(ListStatus)index;
        }

        public void ChangeResource(bool next,bool byuser )
        {
            if (CurrentList == null) return;
            int index;
            if (byuser && PlayListMode== ListStatus.SingleRepeat)
                //用户单击上一曲、下一曲时强制按顺序切换
            {
                
                if (CurrentMedia != null)
                    if (next)
                        PlayTarget(CurrentList.GetNext(out index, CurrentMedia.Name));

                    else
                        PlayTarget(CurrentList.GetPreview(out index, CurrentMedia.Name));

                else
                   if (next) PlayTarget(CurrentList.GetNext(out index));
                else PlayTarget(CurrentList.GetPreview(out index));
               
            }
            else
            {   Media pt;
                switch (PlayListMode)
                {
                    case ListStatus.SingleRepeat:
                        if(CurrentMedia!=null)PlayTarget(CurrentMedia);
                        break;
                    case ListStatus.Random:
                        Random rd = new Random();
                        index = rd.Next(CurrentList.List.Count);
                        PlayTarget(CurrentList.List[index]);
                        break;
                    case ListStatus.ListSequence:
                        
                        if (CurrentMedia != null)
                            if (next)
                                pt = CurrentList.GetNext(out index, CurrentMedia.Name);
                            else
                                pt = CurrentList.GetPreview(out index, CurrentMedia.Name);
                        else
                           if(next) pt = CurrentList.GetNext(out index);
                           else pt = CurrentList.GetPreview(out index);
                        if (byuser)
                        {
                            if (index < 0) pt = CurrentList.List.Last();
                            else if (index >= CurrentList.List.Count) pt = CurrentList.List.First();
                        }
                        if (pt == null)
                        {
                            IsPaused = true;
                            IsStoped = true;
                        }
                        else  PlayTarget(pt);

                        break;
                    case ListStatus.ListRepeat:
                        if (CurrentMedia != null)
                            if (next)
                                pt = CurrentList.GetNext(out index, CurrentMedia.Name);
                                
                            else
                                 pt = CurrentList.GetPreview(out index, CurrentMedia.Name);
                        else
                           if(next) pt = CurrentList.GetNext(out index);
                           else pt = CurrentList.GetPreview(out index);
                        if (pt == null)
                        {
                            if (index < 0) pt = CurrentList.List.Last();
                            else if (index >= CurrentList.List.Count) pt = CurrentList.List.First();
                        }
                        PlayTarget(pt);
                        break;

                }

            }
            
            if (CurrentMedia.Type == ".mp3")
            {
               SV.Visibility = Visibility.Visible;
               ME.Visibility = Visibility.Collapsed;
            }
            else
            {
                ME.Visibility = Visibility.Visible;
                SV.Visibility = Visibility.Collapsed;
            }
            //PlayerAction("DisplayStatus");
        }


        public MediaList GetTargetList(string name)
        {
            foreach (var item in Playlist)
            {
                if (item.Name ==name)
                {
                    return item;
                }
            }
            return null;
        }

        public SideBarItem GetTargetBar(string name)
        {
            foreach (var item in SideBarSources)
            {
                if (item.Title == name) return item;
            }
            return null;
        }

        public void PopupEvent(object sender, MouseWheelEventArgs e)
        {
            var eventArg = new MouseWheelEventArgs(e.MouseDevice, e.Timestamp, e.Delta/2);
            eventArg.RoutedEvent = UIElement.MouseWheelEvent;
            eventArg.Source = sender;
            ((FrameworkElement)sender).RaiseEvent(eventArg);
            
        }

        public void LoadList()
        {
            XmlManager ml = new XmlManager();
            ml.Open("./Data/Local.xml");
            ml.GetSingleMediaList(LocalMedias,null);

            ml.Open("./Data/UserList.xml");
            ml.GetMultyMediaList(SideBarSources, Playlist, LocalMedias);

            ml.Open("./Data/History.xml");
            ml.GetSingleMediaList(HistoryMedias,LocalMedias);
            
            ml.Open("./Data/Current.xml");
            ml.GetSingleMediaList(CurrentList.List, LocalMedias);

            ml.Open("./Data/Lovely.xml");
            ml.GetSingleMediaList(LovelyMedias,LocalMedias);

            var tb = GetTargetBar("播放历史");
            tb.Medias.List = HistoryMedias;

            tb = GetTargetBar("最喜爱的音乐");
            tb.Medias.List = LovelyMedias;

            var lbt = GetTargetBar("本地媒体");
            lbt.Medias.List = LocalMedias;

            foreach (var item in LocalMedias)
            {
                if (item.IsPlaying == true)
                {
                    CurrentMedia = item;
                    if (CurrentList.List.Count == 0) CurrentList.List.Add(item);
                    break;
                }
            }

            ml.UpdataSidebar(SideBarSources, "./Data/SideBarStats.xml");
        }

        public void SaveList()
        {
            XmlManager ml = new XmlManager();
            ml.SetSingleMediaList(LocalMedias, "./Data/Local.xml");
            ml.SetSingleMediaList(CurrentList.List, "./Data/Current.xml");
            ml.SetSingleMediaList(HistoryMedias, "./Data/History.xml");
            ml.SetSingleMediaList(LovelyMedias, "./Data/Lovely.xml");
            ml.SetMultyMediaList(Playlist, "./Data/UserList.xml");
            ml.StorageSidebar(SideBarSources, "./Data/SideBarStats.xml");
            
            ml.SetUserSetting(US, "./Data/UserSetting.xml");
        }


        private void Slider_DragStarted(object sender, System.Windows.Controls.Primitives.DragStartedEventArgs e)
        {
            //Console.WriteLine("Slider Start Event");
            Player.Pause(); MediaTimer.Stop(); IsPaused = true;
        }

        private void Slider_DragCompleted(object sender, System.Windows.Controls.Primitives.DragCompletedEventArgs e)
        {
            //Console.WriteLine("Slider End Event");
            Player.Position = CurrentPosition;
            if (IsPaused) { Player.Play(); MediaTimer.Start(); IsPaused = false; }
        }

        public void Side_Bar_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            CheckMode = false;
            if(e.AddedItems.Count>0)SB = e.AddedItems[0] as SideBarItem;
            if (e.RemovedItems.Count > 0)
            {
                var rsb = e.RemovedItems[0] as SideBarItem;
                foreach (var item in rsb.Medias.List)
                {
                    item.IsChecked = false;
                }
                rsb.Medias.GroupBy = "";
                rsb.Medias.SortBy = "";
            }
        }

        #region 依赖属性


        public TimeSpan CurrentPosition
        {
            get { return (TimeSpan)GetValue(CurrentPositionProperty); }
            set { SetValue(CurrentPositionProperty, value); }
        }

        // Using a DependencyProperty as the backing store for CurrentPosition.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty CurrentPositionProperty =
            DependencyProperty.Register("CurrentPosition", typeof(TimeSpan), typeof(MainWindow), null);


        public Duration TotalDuration
        {
            get { return (Duration)GetValue(TotalDurationProperty); }
            set { SetValue(TotalDurationProperty, value); }
        }

        // Using a DependencyProperty as the backing store for TotalDuration.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty TotalDurationProperty =
            DependencyProperty.Register("TotalDuration", typeof(Duration), typeof(MainWindow), new PropertyMetadata(new Duration( TimeSpan.FromSeconds(0))));



        public bool IsPlayErrored
        {
            get { return (bool)GetValue(IsPlayErroredProperty); }
            set { SetValue(IsPlayErroredProperty, value); }
        }

        // Using a DependencyProperty as the backing store for PlayErrored.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsPlayErroredProperty =
            DependencyProperty.Register("IsPlayErrored", typeof(bool), typeof(MainWindow), new PropertyMetadata(false));



        public bool IsStoped
        {
            get { return (bool)GetValue(IsStopedProperty); }
            set { SetValue(IsStopedProperty, value); }
        }

        // Using a DependencyProperty as the backing store for IsStoped.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsStopedProperty =
            DependencyProperty.Register("IsStoped", typeof(bool), typeof(MainWindow), new PropertyMetadata(true));




        public bool IsPaused
        {
            get { return (bool)GetValue(IsPausedProperty); }
            set { SetValue(IsPausedProperty, value); }
        }

        // Using a DependencyProperty as the backing store for IsPaused.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsPausedProperty =
            DependencyProperty.Register("IsPaused", typeof(bool), typeof(MainWindow), new PropertyMetadata(true));

       
        public ListStatus PlayListMode
        {
            get { return (ListStatus)GetValue(PlayListModeProperty); }
            set { SetValue(PlayListModeProperty, value); }
        }

        // Using a DependencyProperty as the backing store for PlayListMode.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty PlayListModeProperty =
            DependencyProperty.Register("PlayListMode", typeof(ListStatus), typeof(MainWindow), new PropertyMetadata(ListStatus.ListSequence));


        public Media CurrentMedia
        {
            get { return (Media)GetValue(CurrentMediaProperty); }
            set { SetValue(CurrentMediaProperty, value); }
        }

        // Using a DependencyProperty as the backing store for CurrentMedia.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty CurrentMediaProperty =
            DependencyProperty.Register("CurrentMedia", typeof(Media), typeof(MainWindow), new PropertyMetadata(new Media()));



        public MediaList CurrentList
        {
            get { return (MediaList)GetValue(CurrentListProperty); }
            set { SetValue(CurrentListProperty, value); }
        }

        // Using a DependencyProperty as the backing store for CurrentList.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty CurrentListProperty =
            DependencyProperty.Register("CurrentList", typeof(MediaList), typeof(MainWindow), new PropertyMetadata(new MediaList
            {
                Name = DateTime.Now.ToString(),
                List = new ObservableCollection<Media>()
            }));



        public bool ShowListTitleContorlBar
        {
            get { return (bool)GetValue(ShowListTitleContorlBarProperty); }
            set { SetValue(ShowListTitleContorlBarProperty, value); }
        }

        // Using a DependencyProperty as the backing store for ShowListTitleContorlBar.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty ShowListTitleContorlBarProperty =
            DependencyProperty.Register("ShowListTitleContorlBar", typeof(bool), typeof(MainWindow), new PropertyMetadata(false));



        public Visibility TopMask
        {
            get { return (Visibility)GetValue(TopMaskProperty); }
            set { SetValue(TopMaskProperty, value); }
        }

        // Using a DependencyProperty as the backing store for MyProperty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty TopMaskProperty =
            DependencyProperty.Register("TopMask", typeof(Visibility), typeof(MainWindow), new PropertyMetadata(Visibility.Collapsed));



        public int TopMaskType
        {
            get { return (int)GetValue(TopMaskTypeProperty); }
            set { SetValue(TopMaskTypeProperty, value); }
        }

        // Using a DependencyProperty as the backing store for TopMaskType.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty TopMaskTypeProperty =
            DependencyProperty.Register("TopMaskType", typeof(int), typeof(MainWindow), new PropertyMetadata(0));



        public int TopMaskSubType
        {
            get { return (int)GetValue(TopMaskSubTypeProperty); }
            set { SetValue(TopMaskSubTypeProperty, value); }
        }

        // Using a DependencyProperty as the backing store for TopMaskSubType.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty TopMaskSubTypeProperty =
            DependencyProperty.Register("TopMaskSubType", typeof(int), typeof(MainWindow), new PropertyMetadata(0));



        public Visibility IsMediaVisible
        {
            get { return (Visibility)GetValue(IsMediaVisibleProperty); }
            set { SetValue(IsMediaVisibleProperty, value); }
        }

        // Using a DependencyProperty as the backing store for IsMediaVisibal.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsMediaVisibleProperty =
            DependencyProperty.Register("IsMediaVisible", typeof(Visibility), typeof(MainWindow), new PropertyMetadata(Visibility.Collapsed));



        public bool CheckMode
        {
            get { return (bool)GetValue(CheckModeProperty); }
            set { SetValue(CheckModeProperty, value); }
        }

        // Using a DependencyProperty as the backing store for CheckMode.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty CheckModeProperty =
            DependencyProperty.Register("CheckMode", typeof(bool), typeof(MainWindow), new PropertyMetadata(false));


        #endregion

        public DependencyObject FindElement(DependencyObject Source,string Name,Type type,bool ChildOrParent)
        {
            if (ChildOrParent)
            {
                var clc = VisualTreeHelper.GetChildrenCount(Source);
                for (int i=0;i< clc; i++)
                {
                   var item = VisualTreeHelper.GetChild(Source, i);
                    DependencyObject result = item;
                    if (type != null)
                    {
                        if (item.GetType() != type) result = null;
                    }
                    if (Name != null)
                    {
                        if (((FrameworkElement)item).Name != Name) result = null;
                    }
                    if (result != null) return result;
                }
                for (int j = 0; j < clc; j++)
                {
                    return FindElement(VisualTreeHelper.GetChild(Source, j), Name, type, ChildOrParent);
                }
                return null;
            }
            else
            {
                var item = VisualTreeHelper.GetParent(Source);
                DependencyObject result = item;
                if (type != null)
                {
                    if (item.GetType() != type) result = null;
                }
                if (Name != null)
                {
                    if (((FrameworkElement)item).Name != Name) result = null;
                }
                if (result != null) return result;
                else return FindElement(item, Name, type, ChildOrParent);
                   
            }
        }


        private void Volume_Button_Click(object sender, RoutedEventArgs e)
        {
            Volume_Popup.IsOpen = true;
        }

        private void Mute_Button_Click(object sender, RoutedEventArgs e)
        {
            Player.IsMuted = !Player.IsMuted;
        }

 
        private void List_Button_Click(object sender, RoutedEventArgs e)
        {
            List_Popup.IsOpen = true;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
            var c = new MediaList();
            CoverSetter(c);
           Console.WriteLine("Button Click");
        }

        private void List_Modify_IsEnabledChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            BindingExpression be = ((TabItem)sender).GetBindingExpression(TabItem.DataContextProperty);
            be.UpdateTarget();
        }

        private void Open_Toggle_Click(object sender, RoutedEventArgs e)
        {
          var tb = sender as ToggleButton;
            if (tb != null)
            {
                tb.ContextMenu.PlacementTarget = tb;
                tb.ContextMenu.IsOpen = true;
            }
        }
    }
}
