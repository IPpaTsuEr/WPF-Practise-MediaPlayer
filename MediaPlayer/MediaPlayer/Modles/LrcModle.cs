using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediaPlayer.Modles
{
    class LrcModle
    {
        public string Lrc { get; set; }
        public double Time { get; set; }

        public bool ConvertString(string lrcstring)
        {
            if (lrcstring == null || lrcstring == "") return false;
            string[] items = lrcstring.Replace("\r","").Split(']');

            if (items.Length == 2) Lrc = items[1];
            else Lrc = "";

            string[] stm = items[0].Substring(1).Split(':');
            if (stm.Length == 2)
            {
                if(stm[1].IndexOf(".")>=0)
                {
                    int m = System.Convert.ToInt32(stm[0]);
                    double s = System.Convert.ToDouble(stm[1]);
                    Time = m * 60 + s;
                    //Console.WriteLine("Time is ["+Time+"]");
                    return true;
                }
            }
            return false;
        }
    }
}
