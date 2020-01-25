using FrameLessWindow.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediaPlayer.Modles
{
   public class SideBarItem : NotificationObject
    {
        private int _TabIndex;

        public int TabIndex
        {
            get { return _TabIndex; }
            set
            {
                if (value != _TabIndex)
                {
                    _TabIndex = value;
                    RaisePropertyChangedNotify("TabIndex");
                }
            }
        }

        private string _Title;

        public string Title
        {
            get { return _Title; }
            set
            {
                if (value != _Title)
                {
                    _Title = value;
                    RaisePropertyChangedNotify("Title");
                }
            }
        }

        private string _Icon;

        public string Icon
        {
            get { return _Icon; }
            set
            {
                if (value != _Icon)
                {
                    _Icon = value;
                    RaisePropertyChangedNotify("Icon");
                }
            }
        }

        private bool _Interactiveable;

        public bool Interactiveable
        {
            get { return _Interactiveable; }
            set
            {
                if (value != _Interactiveable)
                {
                    _Interactiveable = value;
                    RaisePropertyChangedNotify("Interactiveable");
                }
            }
        }

        private bool _IsCurrent;

        public bool IsCurrent
        {
            get { return _IsCurrent; }
            set
            {
                if (value != _IsCurrent)
                {
                    _IsCurrent = value;
                    RaisePropertyChangedNotify("IsSelected");
                }
            }
        }

        private bool _IsMenuable;

        public bool IsMenuable
        {
            get { return _IsMenuable; }
            set
            {
                if (value != _IsMenuable)
                {
                    _IsMenuable = value;
                    RaisePropertyChangedNotify("IsMenuable");
                }
            }
        }

        private MediaList _Medias;

        public MediaList Medias
        {
            get { return _Medias; }
            set
            {
                if (value != _Medias)
                {
                    _Medias = value;
                    RaisePropertyChangedNotify("Medias");
                }
            }
        }

    }
}
