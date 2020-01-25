using MediaPlayer.Modles;
using MediaPlayer.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Media;
using static MediaPlayer.MainWindow;

namespace MediaPlayer.Converts
{
    class ReSearchButtonVisiable : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && parameter!=null && value is SideBarItem)
            {
                if (((SideBarItem)value).Title == (string)parameter) return Visibility.Visible;
                return Visibility.Hidden;
            }
            return Visibility.Hidden;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    class EnableSortDirection : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is string)
            {
                if (((string)value) != "") return true;
                return false;
            }
            return false;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class SortIconAngle : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is ListSortDirection)
            {
                if (ListSortDirection.Ascending == (ListSortDirection)value)
                {
                    return 0;
                }
                return 180;
            }
            return 0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class SortDirection : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is ListSortDirection)
            {
                var di = (ListSortDirection)value;
                if (ListSortDirection.Ascending == di) return "递增";
                else return "递减";
            }
            return "N/A";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class ListMenuFileter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is ObservableCollection<SideBarItem>)
            {
                ObservableCollection<SideBarItem> sb = value as ObservableCollection<SideBarItem>;
                List<SideBarItem> result = new List<SideBarItem>();
                foreach (var item in sb)
                {
                    if (item.IsMenuable == true) result.Add(item);
                }
                return result;
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    /// <summary>
    /// /////////////////////////////////////LRC Anima////////////////////////////////////////////////////
    /// </summary>
    class RollImage : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && parameter != null)
            {
                Image rec = value as Image;
                rec.UpdateLayout();
                switch ((string)parameter)
                {
                    case "Center":
                       
                        Point p = new Point()
                        {
                            X = rec.ActualWidth / 2,
                            Y = rec.ActualHeight / 2
                        };
                        return p;

                    case "HalfWidth":
                        return rec.ActualWidth / 2;
                    case "HalfHeight":

                        return rec.ActualHeight  / 2;
                }
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    /// <summary>
    /// //////////////////////////////LRC/////////////////////////////////////////////////
    /// </summary>
    class VideoLrcVisiable : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values != null)
            {
                if ((Visibility)values[0] == Visibility.Visible || (Visibility)values[1] == Visibility.Visible)
                    return Visibility.Visible;
            }
            return Visibility.Collapsed;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class LrcHoldSpace : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is double)
            {
                return ((double)value-64) / 2;
            }
            return 28;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class LrcToItems : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is string && (string)value != "")
            {
                var data = System.Convert.FromBase64String((string)value);
                var lrcstr = System.Text.Encoding.Default.GetString(data);
                string[] ssp = lrcstr.Split('\n');
                List<LrcModle> lrclist = new List<LrcModle>();
                LrcModle lm = new LrcModle();
                foreach (var item in ssp)
                {
                    if (lm.ConvertString(item))
                    {
                        lrclist.Add(lm);
                        lm = new LrcModle();
                    }
                }
                return lrclist;
            }
            var c = new List<LrcModle>();
            c.Add(new LrcModle { Lrc = "暂无歌词", Time = 0 });
            return c;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class LrcScroll : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values != null && values.Length==5)
            {
                ScrollViewer sv = (ScrollViewer)values[0];
                TimeSpan ts = (TimeSpan)values[1];
                Media md = (Media)values[2];
                ListView lv = (ListView)values[3];
                double h = ((double)values[4]) / 2;
                if (sv != null && ts != null && md != null)
                {
                    if (lv.Items.Count == 0)
                    {
                        sv.ScrollToVerticalOffset(0); return null;
                    }
                    int index = 0;
                    var lm1 = (LrcModle)lv.Items[index];
                    var lm2 = (LrcModle)lv.Items[lv.Items.Count - 1];

                    if (ts.TotalSeconds <= lm1.Time) lv.SelectedIndex = index;
                    else if (ts.TotalSeconds >= lm2.Time) lv.SelectedIndex = lv.Items.Count - 1;
                    else
                    {
                        do
                        {
                            index++;
                            if (index+1 >= lv.Items.Count)
                            {
                               
                                break;
                            }
                            lm1 = (LrcModle)lv.Items[index];
                            lm2 = (LrcModle)lv.Items[index + 1];
                            if (lm1.Time + md.LrcOffset <= ts.TotalSeconds && lm2.Time+ md.LrcOffset > ts.TotalSeconds ) break;
                        } while (true);
                        lv.SelectedIndex = index;
                        
                        sv.ScrollToVerticalOffset( lv.SelectedIndex * 28);
                    }
                }
            }
            return null;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    /// <summary>
    /// /////////////////////////////////////////////////////////////////////////
    /// </summary>
    class CopyMediaData : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is Media)
            {
                Media md = value as Media;
                return new Media()
                {
                    Name = md.Name,
                    Cover = md.Cover,
                    Album = md.Album,
                    Artist = md.Artist
                };
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class MediaListDeepCopy : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is SideBarItem)
            {
                var sb = value as SideBarItem;
                SideBarItem nsb = new SideBarItem();
                nsb.Medias = new MediaList();
                nsb.Medias.List = new System.Collections.ObjectModel.ObservableCollection<Media>();
                nsb.Medias = new MediaList();
                foreach (var item in sb.Medias.List)
                {
                    nsb.Medias.List.Add(item.Clone());
                }
                return nsb;
            }
            return null;
        }

        public object ConvertBack(object value, Type targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    class MakeDataView : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            //Console.WriteLine("================================= MakeDataView");
            if(value!=null && value is SideBarItem)
            {
                SideBarItem sbi = (SideBarItem)value;
                if (sbi.Medias == null || sbi.Medias.List == null) return null;
                var dv = CollectionViewSource.GetDefaultView(sbi.Medias.List);
                bool needFreash = false;
                if(sbi.Medias.GroupBy!=null)
                {
                    dv.GroupDescriptions.Clear();
                    if(sbi.Medias.GroupBy != "")dv.GroupDescriptions.Add(new PropertyGroupDescription(sbi.Medias.GroupBy));
                    needFreash = true;
                }
                if(sbi.Medias.SortBy!=null )
                {
                    dv.SortDescriptions.Clear();
                    if (sbi.Medias.SortBy != "") dv.SortDescriptions.Add( new System.ComponentModel.SortDescription(sbi.Medias.SortBy,sbi.Medias.SortDirection));
                    needFreash = true;
                }
                if(needFreash) dv.Refresh();
                return dv;
                //var c = from r in sbi.Medias.List group r.Type by r.Name  ;
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class CopyData : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            //Console.WriteLine("=================================CopyData");
            if (values == null) return new SideBarItem();

            bool show = (bool)values[0];
            SideBarItem sd = (SideBarItem)values[1];

            if (sd == null || show == false || sd.Medias==null) return new SideBarItem();

            //当目标显示时 获得指定的数据副本
            SideBarItem re = new SideBarItem
            {
                Title = sd.Title,
                Medias = new MediaList()
                {
                    Cover = sd.Medias.Cover,
                    Summary = sd.Medias.Summary,
                    Tag = sd.Medias.Tag,
                    Name = sd.Medias.Name
                }
            };
            return re;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class PlayMultyParameter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            return values.Clone();
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    /// <summary>
    /// ///////////////////////////////////////////////////////////////
    /// </summary>

    class StringToTime : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value != null && value is string)
            {
                try
                {
                    if ((string)value == "") return "";
                    var tp = TimeSpan.FromSeconds(System.Convert.ToDouble((string)value));
                    return
                            tp.Hours.ToString("00") + ":" +
                            tp.Minutes.ToString("00") + ":" +
                            tp.Seconds.ToString("00");
                }
                catch (Exception e)
                {
                    Console.WriteLine("StringToTime 转换失败： 源数据["+value+"] 转换到Double" + e.Message);
                    return "";
                }

            }
            return "";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class StringToImage : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (parameter == null || (string)parameter=="") return "/MediaPlayer;component/Assets/MediaListCover.png";
            if(value!=null && value is string && (string)value != "")
            {
                return ImageManager.ConvertToImage((string)value);
            }
            
            switch ((string) parameter)
            {
                case "User":
                    return "/MediaPlayer;component/Assets/UserIcon.png";
                case "Media":
                    return "/MediaPlayer;component/Assets/MediaCover.png";
                case "MediaList":
                    return "/MediaPlayer;component/Assets/MediaListCover.png";
            }
            return "/MediaPlayer;component/Assets/MediaListCover.png";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }

    }
    class VisiblityToBool : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && value is Visibility)
            {
                Visibility vb = (Visibility)value;
                if (vb == Visibility.Visible) return true;
                else if (vb == Visibility.Collapsed) return false;
                else return null;
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && value is bool)
            {
                if ((bool)value) return Visibility.Visible;
                else return Visibility.Collapsed;
            }
            return Visibility.Hidden;
        }
    }
    class BoolToVisib : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is bool)
            {
                if ((bool)value) return Visibility.Visible;
                else return Visibility.Collapsed;
            }
            return Visibility.Hidden;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is Visibility)
            {
                Visibility vb = (Visibility)value;
                if (vb == Visibility.Visible) return true;
                else if (vb == Visibility.Collapsed) return false;
                else return null;
            }
            return null;
        }
    }

    class StringToIconchar : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is string)
            {
                string str = value as string;
                if (str == "") return "";
                if (str.EndsWith(";")) str = str.Substring(0,str.Length - 2);
                if (str.StartsWith("&#x"))
                    return (char)System.Convert.ToInt32(str.Substring(3), 16);
                else if (str.StartsWith("&#"))
                    return (char)System.Convert.ToInt32(str.Substring(2), 10);
                else try
                    {
                        return (char)System.Convert.ToInt32(str, 16);
                    }catch(Exception e)
                    {
                        return (char)0;
                    }
            }
            return (char)0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class BrushToColor : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null &&value.GetType()== typeof(SolidColorBrush))
            {
                SolidColorBrush scb = (SolidColorBrush)value;
                return scb.Color;
            }
            return (Color)ColorConverter.ConvertFromString("White");
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && value.GetType() == typeof(Color))
            {
                return new SolidColorBrush((Color)value);
            }
            return new SolidColorBrush();
        }
    }

    #region Icon转换

    class LovelyForeground : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is bool)
            {
                if ((bool)value) return parameter as SolidColorBrush;
            }

            return -1;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    class LovelyToString : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value is bool)
            { 
                if ((bool)value) return (char)System.Convert.ToInt32("e60b", 16);
                return (char)System.Convert.ToInt32("e60e", 16);
            }
            return (char)System.Convert.ToInt32("e60e", 16);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class VolumeToString : IMultiValueConverter
    {

        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values[0] != null && values[0].GetType() == typeof(double))
            {
                
                if (values[1] != null && System.Convert.ToBoolean(values[1]) == true)
                    return ""+(char)System.Convert.ToInt32("e878", 16);//静音
                double volume = (double)values[0];
                if (volume >= 0.6)
                    return "" + (char)System.Convert.ToInt32("e647", 16);//高音
                else if (volume >=0.3 && volume <0.6)
                    return "" + (char)System.Convert.ToInt32("e648", 16);//中音
                else if (volume < 0.3 && volume > 0)
                    return "" + (char)System.Convert.ToInt32("e64a", 16);//低音
                else
                    return "" + (char)System.Convert.ToInt32("e649", 16);//无音
            }
            return "" + (char)System.Convert.ToInt32("e658", 16);
        }


        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class ListTypeToString : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
           if(value!=null && value.GetType()== typeof(ListStatus))
            {
                ListStatus lt = (ListStatus)value;
                switch (lt)
                {
                    case ListStatus.SingleRepeat:
                        return (char)System.Convert.ToInt32("e62e", 16);
                    case ListStatus.Random:
                        return (char)System.Convert.ToInt32("e61b", 16);
                    case ListStatus.ListRepeat:
                        return (char)System.Convert.ToInt32("e609", 16);
                    case ListStatus.ListSequence:
                        return (char)System.Convert.ToInt32("e63e", 16);
                }
            }
            return (char)0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class MediaStatusToString : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null)
                return (char)System.Convert.ToInt32("e668", 16);//停止
            if (System.Convert.ToBoolean(value))
                return (char)System.Convert.ToInt32("e784", 16); //播放
            else
                return (char)System.Convert.ToInt32("e640", 16); //暂停
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    #endregion


    #region 媒体播放时间与标志转换 
    
    class TimeSpanToValue : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            
            if (value != null && value.GetType() == typeof(TimeSpan))
            {
                TimeSpan tp = (TimeSpan)value;
                return tp.TotalSeconds;
            }
            return 0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
           if(value!=null && value.GetType()== typeof(double))
            { 
                return  TimeSpan.FromSeconds(System.Convert.ToDouble(value));
            }
            return TimeSpan.FromSeconds(0);
        }
    }

    class TimeSpanToFormatString : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value!=null && value.GetType() == typeof(TimeSpan))
            {
                TimeSpan tp = (TimeSpan)value;
                return
                    tp.Hours.ToString("00")+":"+
                    tp.Minutes.ToString("00") + ":" +
                    tp.Seconds.ToString("00");
                
            }
            return "00:00:00";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class DurationToFormatString : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && value.GetType() == typeof(Duration))
            {
                Duration du = (Duration)value;
                if (du.HasTimeSpan)
                {
                    TimeSpan tp = du.TimeSpan;
                    return
                    tp.Hours.ToString("00") + ":" +
                    tp.Minutes.ToString("00") + ":" +
                    tp.Seconds.ToString("00");
                }
               
            }
            return "00:00:00";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    class DurationToValue : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && value.GetType() == typeof(Duration))
            {
                Duration du = (Duration)value;
                if (du.HasTimeSpan)
                {
                    TimeSpan tp = du.TimeSpan;
                    return tp.TotalSeconds;
                }
                else
                {
                    return 0;
                }
            }
            return 0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && value.GetType() == typeof(double))
            {
                return TimeSpan.FromSeconds(System.Convert.ToDouble(value));
            }
            return TimeSpan.FromSeconds(0);
        }
    }


    #endregion



    public class DebugConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            Debugger.Break();
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            Debugger.Break();
            return value;
        }
    }
}
