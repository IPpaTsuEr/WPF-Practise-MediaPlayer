using FrameLessWindow.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediaPlayer.Modles
{
    public class Media : NotificationObject
    {
        private bool _IsLovely;
        //false = solid f004; true = regular f004;
        public bool IsLovely
        {
            get { return _IsLovely; }
            set
            {
                if (value != _IsLovely)
                {
                    _IsLovely = value;
                    RaisePropertyChangedNotify("IsLovely");
                }
            }
        }

        private string _FilePath;

        public string FilePath
        {
            get { return _FilePath; }
            set
            {
                if (value != _FilePath)
                {
                    _FilePath = value;
                    RaisePropertyChangedNotify("FilePath");
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

        private string _Type;

        public string Type
        {
            get { return _Type; }
            set
            {
                if (value != _Type)
                {
                    _Type = value;
                    RaisePropertyChangedNotify("Type");
                }
            }
        }

        private double _FileSize;

        public double FileSize
        {
            get { return _FileSize; }
            set
            {
                if (value != _FileSize)
                {
                    _FileSize = value;
                    RaisePropertyChangedNotify("FileSize");
                }
            }
        }

        private bool _IsValid;

        public bool IsValid
        {
            get { return _IsValid; }
            set
            {
                if (value != _IsValid)
                {
                    _IsValid = value;
                    RaisePropertyChangedNotify("IsValid");
                }
            }
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

        private string _TimeLength;

        public string TimeLength
        {
            get { return _TimeLength; }
            set
            {
                if (value != _TimeLength)
                {
                    _TimeLength = value;
                    RaisePropertyChangedNotify("TimeLength");
                }
            }
        }

        private string _Artist;

        public string Artist
        {
            get { return _Artist; }
            set
            {
                if (value != _Artist)
                {
                    _Artist = value;
                    RaisePropertyChangedNotify("Artist");
                }
            }
        }

        private string _Album;

        public string Album
        {
            get { return _Album; }
            set
            {
                if (value != _Album)
                {
                    _Album = value;
                    RaisePropertyChangedNotify("Album");
                }
            }
        }

        private string _Date;

        public string Date
        {
            get { return _Date; }
            set
            {
                if (value != _Date)
                {
                    _Date = value;
                    RaisePropertyChangedNotify("Date");
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

        private string _Lrc;

        public string Lrc
        {
            get { return _Lrc; }
            set
            {
                if (value != _Lrc)
                {
                    _Lrc = value;
                    RaisePropertyChangedNotify("Lrc");
                }
            }
        }

        private bool _IsChecked;

        public bool IsChecked
        {
            get { return _IsChecked; }
            set
            {
                if (value != _IsChecked)
                {
                    _IsChecked = value;
                    RaisePropertyChangedNotify("IsChecked");
                }
            }
        }

        private double _LrcOffset;

        public double LrcOffset
        {
            get { return _LrcOffset; }
            set
            {
                if (value != _LrcOffset)
                {
                    _LrcOffset = value;
                    RaisePropertyChangedNotify("LrcOffset");
                }
            }
        }

        private int _BitRate;

        public int BitRate
        {
            get { return _BitRate; }
            set
            {
                if (value != _BitRate)
                {
                    _BitRate = value;
                    RaisePropertyChangedNotify("BitRate");
                }
            }
        }

        public bool Equal(Media t)
        {
            return this.FilePath == t.FilePath;
        }
        public void Update(Media s)
        {
            this.Name = s.Name;
            this.Lrc = s.Lrc;
            this.IsLovely = s.IsLovely;
            this.IsPlaying = s.IsPlaying;
            this.IsValid = s.IsValid;
        }
        public Media Clone()
        {
            Media cp = new Media()
            {
                IsChecked = this.IsChecked,
                Name = this.Name,
                TimeLength = this.TimeLength,
                FilePath = this.FilePath,
                IsLovely = this.IsLovely,
                IsPlaying = this.IsPlaying,
                Artist = this.Artist,
                Album = this.Album,
                IsValid = this.IsValid,
                Type = this.Type,

            };
            return cp;
        }
    }
}
