using MediaPlayer.Modles;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediaPlayer.Services
{
    class FileManager
    {
        public static void SearchFiles<T>(string path,T collection, string filter ="")where T : ICollection<Media>
        {
            if (Directory.Exists(path)){

                DirectoryInfo dif = new DirectoryInfo(path);
                FileInfo[] fl = null;
                try { fl = dif.GetFiles(); }
                catch (Exception expF)
                {
                    Console.WriteLine("SearchFiles Error [" + expF.Message.Replace("\n","")+"]");
                    return;
                }
                foreach (var item in fl)
                {
                   
                    if (item.Extension == "") continue;
                    if ((filter == "" || filter.Length == 0) || filter.IndexOf(item.Extension.ToUpper()) >= 0) {
                        Media mt = new Media()
                        {
                            FilePath = item.FullName,
                            Type = item.Extension,
                            FileSize = item.Length,
                            IsValid =true
                        };
                        if (item.Extension.ToUpper().IndexOf(".MP3") == 0){
                            MP3Helper mph = new MP3Helper();
                            MP3InfoStruct inf = new MP3InfoStruct();
                            mph.Analysis(item.FullName, item.Length, inf);
                            mt.TimeLength = inf.GetTimeLength();
                            mt.Name = inf.GetTtile();
                            if (mt.Name == "" || mt.Name == null)
                                mt.Name = item.Name.Substring(0,item.Name.Length-item.Extension.Length);
                            mt.Artist = inf.GetSinger();
                            mt.Album = inf.GetTable();
                            mt.Date = inf.GetDate();
                            mt.BitRate = inf.GetRate();
                            mt.Cover = inf.GetImage();
                            string lrc = item.FullName.Replace(".mp3", ".lrc");
                            mt.Lrc = GetString(lrc);
                            if (mt.Lrc == "") mt.Lrc = inf.GetLRC();
                        }
                        else
                        {
                            mt.Name = item.Name.Substring(0, item.Name.Length - item.Extension.Length);
                        }
                        //Console.WriteLine("FileExtension "+ item.Name+" [" + item.Extension + "]");
                        collection.Add(mt);
                    }
                
                }
                //下面的方式无法转化相对路径
                //string[] files = Directory.GetFiles(path);
                //foreach (var item in files)
                //{
                //    Console.WriteLine ("========" + item);
                //}
                string[] floders = null;
                try
                {
                    floders = Directory.GetDirectories(path);
                }
                catch(Exception expD)
                {
                    Console.WriteLine("SearchFiles Error [" + expD.Message.Replace("\n", "") + "]");
                    return;
                }
                
                foreach (var item in floders)
                {
                    SearchFiles<T>(item,collection,filter);
                }

            }else if (File.Exists(path))
            {
                FileInfo fi = new FileInfo(path);
                if(filter==null || filter.Length==0) collection.Add(
                    new Media() {
                        FilePath = fi.FullName,
                        Type = fi.Extension,
                        Name = fi.Name
                    });
                else
                {
                    if (filter.IndexOf(fi.Extension)>=0) collection.Add(
                        new Media() {
                            FilePath = fi.FullName,
                            Type = fi.Extension,
                            Name = fi.Name
                        });
                }
               
            }
        }

        public static void GetFileInfo(string filepath)
        {
             
        }

        public static string GetString(string path)
        {
            if (File.Exists(path))
            {
                var SR = File.OpenText(path);
                string str = SR.ReadToEnd();
                SR.Close();
                //Console.WriteLine("载入歌词 【"+path+"】");
                return System.Convert.ToBase64String(System.Text.Encoding.Default.GetBytes(str));
            }
            return "";
        }
    }
}
