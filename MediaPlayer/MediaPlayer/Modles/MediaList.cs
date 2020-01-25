using FrameLessWindow.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediaPlayer.Modles
{
    public class MediaList:NotificationObject
    {
        public MediaList()
        {
            List = new ObservableCollection<Media>();
        }
        private string _Name;

        public string Name
        {
            get { return _Name; }
            set
            {
                if (value != _Name)
                {
                    _Name = value;
                    RaisePropertyChangedNotify("Name");
                }
            }
        }

        private bool _IsDefault;

        public bool IsDefault
        {
            get { return _IsDefault; }
            set
            {
                if (value != _IsDefault)
                {
                    _IsDefault = value;
                    RaisePropertyChangedNotify("IsDefault");
                }
            }
        }

        private bool _IsPlaying;

        public bool IsPlaying
        {
            get { return _IsPlaying; }
            set
            {
                if (value != _IsPlaying)
                {
                    _IsPlaying = value;
                    RaisePropertyChangedNotify("IsPlaying");
                }
            }
        }

        private string _CreateDate;

        public string CreateDate
        {
            get { return _CreateDate; }
            set
            {
                if (value != _CreateDate)
                {
                    _CreateDate = value;
                    RaisePropertyChangedNotify("CreateDate");
                }
            }
        }

        private string _Tag;

        public string Tag
        {
            get { return _Tag; }
            set
            {
                if (value != _Tag)
                {
                    _Tag = value;
                    RaisePropertyChangedNotify("Tag");
                }
            }
        }

        private string _Summary;

        public string Summary
        {
            get { return _Summary; }
            set
            {
                if (value != _Summary)
                {
                    _Summary = value;
                    RaisePropertyChangedNotify("Summary");
                }
            }
        }

        private string _Cover;

        public string Cover
        {
            get { return _Cover; }
            set
            {
                if (value != _Cover)
                {
                    _Cover = value;
                    RaisePropertyChangedNotify("Cover");
                }
            }
        }


        private string _GroupBy;

        public string GroupBy
        {
            get { return _GroupBy; }
            set
            {
                if (value != _GroupBy)
                {
                    _GroupBy = value;
                    RaisePropertyChangedNotify("GroupBy");
                }
            }
        }

        private string _SortBy;

        public string SortBy
        {
            get { return _SortBy; }
            set
            {
                if (value != _SortBy)
                {
                    _SortBy = value;
                    RaisePropertyChangedNotify("SortBy");
                }
            }
        }

        private ListSortDirection _SortDurection = ListSortDirection.Ascending;

        public ListSortDirection SortDirection
        {
            get { return _SortDurection; }
            set
            {
                if (value != _SortDurection)
                {
                    _SortDurection = value;
                    RaisePropertyChangedNotify("SortDirection");
                }
            }
        }


        private ObservableCollection<Media> _List;

        public ObservableCollection<Media> List
        {
            get { return _List; }
            set
            {
                if (value != _List)
                {
                    _List = value;
                    RaisePropertyChangedNotify("List");
                }
            }
        }

        public Media GetNext(out int Index,string name = null)
        {
            Index = 0;
            foreach (var item in List)
            {
                Index++;
                if (name != null)
                {
                    if(item.Name == name)
                    {
                        if (Index >= List.Count) return null;
                        return List[Index];
                    }
                }
                if (item.IsPlaying)
                {
                    if (Index >= List.Count) return null;
                    return List[Index];
                }
                
            }
            return null;
        }

        public Media GetPreview(out int Index, string name = null)
        {
            Index = 0;
            foreach (var item in List)
            {
                if (name != null)
                {
                    if (item.Name == name)
                    {
                        if(Index==0) return null;
                        return List[--Index];
                    }
                }
                if (item.IsPlaying)
                {
                    if (Index >= List.Count) return null;
                    return List[--Index];
                }
                Index++;
            }
            return null;
        }

    }
}
