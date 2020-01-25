using FrameLessWindow.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace MediaPlayer.Modles
{
    public class UserSetting:NotificationObject
    {
        private MediaState _OpenBehavior;

        public MediaState OpenBehavior
        {
            get { return _OpenBehavior; }
            set
            {
                if (value != _OpenBehavior)
                {
                    _OpenBehavior = value;
                    RaisePropertyChangedNotify("OpenBehavior");
                }
            }
        }

        private double _Volume;

        public double Volume
        {
            get { return _Volume; }
            set
            {
                if (value != _Volume)
                {
                    _Volume = value;
                    RaisePropertyChangedNotify("Volume");
                }
            }
        }

        private string _MediaTypes;

        public string MediaTypes
        {
            get { return _MediaTypes; }
            set
            {
                if (value != _MediaTypes)
                {
                    _MediaTypes = value;
                    RaisePropertyChangedNotify("MediaTypes");
                }
            }
        }

        private string _UserName;

        public string UserName
        {
            get { return _UserName; }
            set
            {
                if (value != _UserName)
                {
                    _UserName = value;
                    RaisePropertyChangedNotify("UserName");
                }
            }
        }

        private string _UserImage;

        public string UserImage
        {
            get { return _UserImage; }
            set
            {
                if (value != _UserImage)
                {
                    _UserImage = value;
                    RaisePropertyChangedNotify("UserImage");
                }
            }
        }

        private int _ListStates;

        public int ListStates
        {
            get { return _ListStates; }
            set
            {
                if (value != _ListStates)
                {
                    _ListStates = value;
                    RaisePropertyChangedNotify("ListStates");
                }
            }
        }

        private bool _EnableRealTimeSearch;

        public bool EnableRealTimeSearch
        {
            get { return _EnableRealTimeSearch; }
            set
            {
                if (value != _EnableRealTimeSearch)
                {
                    _EnableRealTimeSearch = value;
                    RaisePropertyChangedNotify("EnableRealTimeSearch");
                }
            }
        }

        private int _SkinIndex;

        public int SkinIndex
        {
            get { return _SkinIndex; }
            set
            {
                if (value != _SkinIndex)
                {
                    _SkinIndex = value;
                    RaisePropertyChangedNotify("SkinIndex");
                }
            }
        }


        public bool IsLoadSuccessed = false;

        public ObservableCollection<string> ListenPath { get; set; }
    }
}
