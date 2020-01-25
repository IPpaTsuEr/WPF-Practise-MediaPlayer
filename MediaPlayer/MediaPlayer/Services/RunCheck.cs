using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediaPlayer.Services
{
    class RunCheck
    {
        public static bool HasMediaPlayer(int version =0)
        {
            var key = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\MediaPlayer\PlayerUpgrade");
            if (key == null) return false;
            var ver = key.GetValue("PlayerVersion") as string;
            try
            {
                return Convert.ToInt32(ver.Split(',')[0]) >= version;
            }
            catch (Exception )
            {
                return false;
            }
           
        }
    }
}
