using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace MediaPlayer.Services
{
    class ImageManager
    {
        public static string ConvertToString(BitmapImage IM)
        {
            byte[] data = null;
            if (IM.StreamSource == null)
            {
                FileStream FS = new FileStream(IM.UriSource.ToString(), FileMode.Open, FileAccess.Read);
                FS.Position = 0;
                data = new byte[FS.Length];
                FS.Read(data, 0, (int)FS.Length);
                FS.Close();
            }
            else
            {
                Stream MS = IM.StreamSource;
                MS.Position = 0;
                BinaryReader BF = new BinaryReader(MS);
                data = BF.ReadBytes((int)MS.Length);
                MS.Close();
                BF.Close();
            }

            return Convert.ToBase64String(data);
        }
        public static BitmapImage ConvertToImage(string SD)
        {
            byte[] data = Convert.FromBase64String(SD);
            MemoryStream MS = new MemoryStream(data);
            BitmapImage bm = new BitmapImage();
            bm.BeginInit();
            bm.CacheOption = BitmapCacheOption.OnLoad;
            bm.StreamSource = MS;
            bm.EndInit();
            bm.Freeze();
            MS.Close();
            return bm;
        }

        public static string FromPath(string path)
        {
            FileStream FS = new FileStream(path,FileMode.Open , FileAccess.Read);
            if(FS.Length <= 1024* 1024 * 26)
            {
                byte[] data = new byte[FS.Length];
                FS.Position = 0;
                FS.Read(data, 0,(int) FS.Length);
                FS.Close();
                return Convert.ToBase64String(data);
            }
            FS.Close();
            return null;
        }
    }
}
