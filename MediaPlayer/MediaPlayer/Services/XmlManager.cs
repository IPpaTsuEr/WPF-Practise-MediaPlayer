using MediaPlayer.Modles;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Xml;

namespace MediaPlayer.Services
{
    class XmlManager
    {
        XmlDocument xdoc;
        public XmlManager()
        {

        }
        public XmlManager(string file)
        {
            if (!File.Exists(file)) CreateEmptyFile(file);
            xdoc = new XmlDocument();
            xdoc.Load(file);

        }

        public XmlManager(string inbedPath, bool Nothing)
        {
            System.Reflection.Assembly _as = System.Reflection.Assembly.GetExecutingAssembly();
            var stream = _as.GetManifestResourceStream("MediaPlayer." + inbedPath);
            xdoc = new XmlDocument();
            xdoc.Load(stream);
        }

        public void Open(string file)
        {
            if (!File.Exists(file)) CreateEmptyFile(file);
            xdoc = new XmlDocument();
            xdoc.Load(file);
        }
        public void OpenInner(string inbedPath)
        {
            System.Reflection.Assembly _as = System.Reflection.Assembly.GetExecutingAssembly();
            var stream = _as.GetManifestResourceStream("MediaPlayer." + inbedPath);
            xdoc = new XmlDocument();
            xdoc.Load(stream);
        }

        public void GetSideBarData<T>(T collection) where T : ICollection<SideBarItem>
        {
            var root = xdoc.DocumentElement;
            //载入默认边侧栏
            foreach (var item in root.ChildNodes)
            {
                var node = (XmlElement)item;
                SideBarItem si = new SideBarItem
                {
                    Icon = node.GetAttribute("Icon"),
                    Interactiveable = Convert.ToBoolean(node.GetAttribute("Interactiveable")),
                    IsCurrent = false,// ((XmlElement)item).GetAttribute("Icon");
                    Title = node.InnerText,
                    IsMenuable = Convert.ToBoolean(node.GetAttribute("IsMenuable")),
                    TabIndex = Convert.ToInt32(node.GetAttribute("TabIndex")),
                    
                    Medias = new MediaList()
                };
                collection.Add(si);
            }

        }
        public void UpdataSidebar<T>(T collection,string path) where T : ICollection<SideBarItem>
        {
            XmlDocument xd = new XmlDocument();
            if (!File.Exists(path)) return;
            xd.Load(path);
            var Root = xd.DocumentElement;
            foreach (var item in Root.ChildNodes)
            {
                var node = (XmlElement)item;
                foreach (var side in collection)
                {
                    if (side.Title == node.InnerText)
                    {
                        string sat = node.GetAttribute("IsCurrent");
                        if (sat == "")
                            side.IsCurrent = false;
                        else
                            side.IsCurrent = System.Convert.ToBoolean(sat);
                        break;
                    }
                }
            }
        }
        public void StorageSidebar<T>(T collection, string path) where T : ICollection<SideBarItem>
        {
            XmlDocument xd = new XmlDocument();
            xd.AppendChild(xd.CreateXmlDeclaration("1.0", "utf-8", null));
            var root = xd.AppendChild(xd.CreateElement("Root"));
            foreach (var item in collection)
            {
                var node = xd.CreateElement("Stats");
                node.SetAttribute("IsCurrent", item.IsCurrent.ToString());
                node.InnerText = item.Title;
                root.AppendChild(node);
            }
            xd.Save(path);
        }


        public void GetMultyMediaList<T, E, F>(T SideList, E medialist, F reference) where T : ICollection<SideBarItem> where E : ICollection<MediaList> where F : ICollection<Media>
        {
            var root = xdoc.DocumentElement;

            foreach (var item in root.ChildNodes)
            {
                var node = (XmlElement)item;
                MediaList list = ConvertListNode(node);
                medialist.Add(list);

                bool find = false;
                foreach (var sideitem in SideList)
                {
                    if(sideitem.Title == list.Name)
                    {
                        sideitem.Medias = list;
                        find = true;
                        break;
                    }
                }
                if (!find)
                {
                    SideBarItem sm = new SideBarItem
                    {
                        Interactiveable = true,
                        Title = list.Name,
                        IsCurrent = false,
                        Icon = "e61a",
                        IsMenuable = true,
                        Medias = list,
                        TabIndex = 0
                    };
                    SideList.Add(sm);
                }
                if (node.HasChildNodes)
                {
                    foreach (var sitem in node.ChildNodes)
                    {
                        var subnode = (XmlElement)sitem;
                        //list.List.Add(ConvertNode(subnode));
                        var me = ConvertNode(subnode);
                        if (reference != null)
                        {
                            bool isfind = false;
                            foreach (var sub in reference)
                            {
                                if (sub.FilePath == me.FilePath)
                                {
                                    sub.Update(me);
                                    list.List.Add(sub);
                                    isfind = true;
                                    break;
                                }
                            }
                            if (!isfind) list.List.Add(me);
                        }
                        else
                        {
                            list.List.Add(me);
                        }
                    }

                }
            }
        }

        public void SetMultyMediaList<T>(T List,string path)where T : Collection<MediaList>
        {
            XmlDocument xd = new XmlDocument();
            xd.AppendChild(xd.CreateXmlDeclaration("1.0","utf-8",null));
            var root = xd.AppendChild(xd.CreateElement("Root"));

            foreach (var item in List)
            {
                var node = ConvertMediaList(xd, item);

                foreach (var sub in item.List)
                {
                    node.AppendChild(ConvertMedia(xd,sub));
                }
                root.AppendChild(node);
            }
            xd.Save(path);
        }

        public void GetSingleMediaList<T>(T list,T reference)where T: ICollection<Media>
        {
            var root = xdoc.DocumentElement;
            foreach (var item in root.ChildNodes)
            {
                var node = (XmlElement)item;
                var me = ConvertNode(node);
                if (reference != null)
                {
                    bool isfind = false;
                    foreach (var sub in reference)
                    {
                        if(sub.FilePath == me.FilePath)
                        {
                            sub.Update(me);
                            list.Add(sub);
                            isfind = true;
                            break;
                        }
                    }
                    if(!isfind) list.Add(me);
                }
                else
                {
                    list.Add(me);
                }
                
            }
        }

        public void SetSingleMediaList<T>(T list,string path) where T : ICollection<Media>
        {
            XmlDocument xd = new XmlDocument();
            xd.AppendChild(xd.CreateXmlDeclaration("1.0", "utf-8", null));
            var root = xd.AppendChild(xd.CreateElement("Root"));
            foreach (var item in list)
            {
                root.AppendChild(ConvertMedia(xd,item));
            }
            xd.Save(path);
        }

        public UserSetting GetUserSetting()
        {
            var root = xdoc.DocumentElement;
            UserSetting US = new UserSetting();
            foreach (var item in root.ChildNodes)
            {
                var node = (XmlElement)item;
                switch (node.Name)
                {
                    case "OpenBehavior":
                        US.OpenBehavior = (MediaState)Convert.ToInt32(node.InnerText);
                        break;
                    case "Volume":
                        US.Volume = Convert.ToDouble(node.InnerText);
                        break;
                    case "MediaTypes":
                        US.MediaTypes = node.InnerText;
                        break;
                    case "ListenPath":
                        US.ListenPath = new ObservableCollection<string>();
                        foreach (var sub in node.ChildNodes)
                        {
                            var subnode = (XmlElement)sub;
                            US.ListenPath.Add(subnode.InnerText);
                        }
                        break;
                    case "UserName":
                        US.UserName = node.InnerText;
                        break;
                    case "UserImage":
                        US.UserImage = node.InnerText;
                        break;
                    case "ListStates":
                        US.ListStates = System.Convert.ToInt32(node.InnerText);
                        break;
                    case "EnableRealTimeSearch":
                        US.EnableRealTimeSearch = System.Convert.ToBoolean(node.InnerText);
                        break;
                    case "SkinIndex":
                        US.SkinIndex = System.Convert.ToInt32(node.InnerText);
                        break;

                }
                US.IsLoadSuccessed = true;
            }
            return US;
        }

        public void SetUserSetting(UserSetting us, string path)
        {
            XmlDocument xd = new XmlDocument();
            xd.AppendChild(xd.CreateXmlDeclaration("1.0", "utf-8", null));
            var root = xd.AppendChild(xd.CreateElement("Root"));

            var node = xd.CreateElement("OpenBehavior");
            node.InnerText = ((int)us.OpenBehavior).ToString();
            root.AppendChild(node);

            node = xd.CreateElement("Volume");
            node.InnerText = us.Volume.ToString();
            root.AppendChild(node);

            node = xd.CreateElement("UserName");
            node.InnerText = us.UserName.ToString();
            root.AppendChild(node);

            node = xd.CreateElement("MediaTypes");
            node.InnerText = us.MediaTypes.ToString();
            root.AppendChild(node);

            node = xd.CreateElement("ListenPath");
            //node.InnerText = us.ListenPath.ToString();
            
            foreach (var item in us.ListenPath)
            {
                var pnode = xd.CreateElement("Path");
                pnode.InnerText = item;
                node.AppendChild(pnode);
            }
            root.AppendChild(node);


            node = xd.CreateElement("UserImage");
            node.InnerText = us.UserImage;
            root.AppendChild(node);

            node = xd.CreateElement("ListStates");
            node.InnerText = ((int)us.ListStates).ToString();
            root.AppendChild(node);

            node = xd.CreateElement("EnableRealTimeSearch");
            node.InnerText = us.EnableRealTimeSearch.ToString();
            root.AppendChild(node);

            node = xd.CreateElement("SkinIndex");
            node.InnerText = us.SkinIndex.ToString();
            root.AppendChild(node);

            xd.Save(path);
        }

        private Media ConvertNode(XmlElement node)
        {
            Media iif = new Media();
            iif.FilePath = node.InnerText;
            iif.Date = node.GetAttribute("Date");
            iif.Album = node.GetAttribute("Album");
            iif.Artist = node.GetAttribute("Artist");
            iif.Cover = node.GetAttribute("Cover");
            iif.Name = node.GetAttribute("Name");
            iif.TimeLength = node.GetAttribute("TimeLength");
            iif.Type = node.GetAttribute("Type");
            iif.Lrc = node.GetAttribute("Lrc");
            string attr;
            attr = node.GetAttribute("IsLovely");
            if (attr == null || attr == "") iif.IsLovely = false;
            else iif.IsLovely = Convert.ToBoolean(attr);
            attr = node.GetAttribute("IsPlaying");
            if (attr == null || attr == "") iif.IsPlaying = false;
            else iif.IsPlaying = Convert.ToBoolean(attr);
            attr = node.GetAttribute("FileSize");
            if (attr == null || attr == "") iif.FileSize = 0.0;
            else iif.FileSize = Convert.ToDouble(attr);
            attr = node.GetAttribute("IsValid");
            if (attr == null || attr == "") iif.IsValid = false;
            else iif.IsValid = Convert.ToBoolean(attr);
            attr = node.GetAttribute("LrcOffset");
            if (attr == null || attr == "") iif.LrcOffset = 0.0;
            else iif.LrcOffset = Convert.ToDouble(attr);
            attr = node.GetAttribute("BitRate");
            if (attr == null || attr == "") iif.BitRate = 0;
            else iif.BitRate = Convert.ToInt32(attr);
            return iif;
        }

        private MediaList ConvertListNode(XmlElement node)
        {
            MediaList list = new MediaList();
            list.IsPlaying = Convert.ToBoolean(node.GetAttribute("IsPlaying"));
            list.IsDefault = Convert.ToBoolean(node.GetAttribute("IsDefault"));
            list.CreateDate = node.GetAttribute("CreateDate");
            list.Name = node.GetAttribute("Name");
            list.Summary = node.GetAttribute("Summary");
            list.Tag = node.GetAttribute("Tag");
            list.Cover = node.GetAttribute("Cover");
            list.GroupBy = node.GetAttribute("GroupBy");
            list.SortBy = node.GetAttribute("SortBy");
            string attr = node.GetAttribute("SortDirection");
            if (attr == null || attr == "") list.SortDirection = (ListSortDirection)0;
            else list.SortDirection = (ListSortDirection)Convert.ToInt32(attr);
            list.List = new System.Collections.ObjectModel.ObservableCollection<Media>();
            return list;
        }

        private XmlElement ConvertMedia(XmlDocument xd ,Media item)
        {
            var node = xd.CreateElement("Media");
            node.SetAttribute("Name", item.Name);
            node.SetAttribute("Album", item.Album);
            node.SetAttribute("Artist", item.Artist);
            node.SetAttribute("Date", item.Date);
            node.SetAttribute("FileSize", item.FileSize.ToString());
            node.SetAttribute("IsLovely", item.IsLovely.ToString());
            node.SetAttribute("TimeLength", item.TimeLength);
            node.SetAttribute("Type", item.Type);
            node.SetAttribute("IsPlaying", item.IsPlaying.ToString());
            node.SetAttribute("Cover", item.Cover);
            node.SetAttribute("IsValid", item.IsValid.ToString());
            node.SetAttribute("LrcOffset",item.LrcOffset.ToString());
            node.SetAttribute("Lrc", item.Lrc);
            node.SetAttribute("BitRate", item.BitRate.ToString());
            node.InnerText = item.FilePath;

            return node;
        }

        private XmlElement ConvertMediaList(XmlDocument xd, MediaList item)
        {
            var node = xd.CreateElement("SongList");
            node.SetAttribute("Name", item.Name);
            node.SetAttribute("Tag", item.Tag);
            node.SetAttribute("Summary", item.Summary);
            node.SetAttribute("CreateDate", item.CreateDate);
            node.SetAttribute("IsDefault", item.IsDefault.ToString());
            node.SetAttribute("IsPlaying", item.IsPlaying.ToString());
            node.SetAttribute("Cover", item.Cover);
            node.SetAttribute("GroupBy", item.GroupBy);
            node.SetAttribute("SortBy", item.SortBy);
            node.SetAttribute("SortDirection", ((int)item.SortDirection).ToString());
            return node;
        }

        private void CreateEmptyFile(string path)
        {
            XmlDocument xd = new XmlDocument();
            xd.AppendChild(xd.CreateXmlDeclaration("1.0", "utf-8", null));
            xd.AppendChild(xd.CreateElement("Root"));
            xd.Save(path);
        }
    }
}
