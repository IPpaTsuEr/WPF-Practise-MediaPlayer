using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediaPlayer.Services
{
    public enum Gener
    {
        Blues,ClassicRock,Country,Dance,Disco,Funk,Grunge,HipHop,Jazz,Metal,NewAge,Oldies,
        Other,Pop,RB,Rap,Reggae,Rock,Techno,Industrial,Alternative,Ska,DeathMetal,Pranks,
        Soundtrack,EuroTechno,Ambient,TripHop,Vocal,JazzFunk,Fusion
    }
    public class ID3V1Struct
    {
        //Tag　　　3 　　ID3V1标识符“TAG”的Ascii码
        //Title　　30　　歌曲名
        //Artist　 30　　歌手名
        //Album　　30　　专辑名
        //Year　　 4 　　日期信息
        //Comment　28　　注释信息，有时为30字节
        //Reserved 1 　　＝0说明有音轨，下一字节就是音轨；≠0表示注释是30个字节
        //Track　　1 　　音轨（字节型数值），歌曲在专辑里的序号
        //Genre　　1 　　歌曲风格（字节型数值）
        public string Tag;
        public string Title;
        public string Artist;
        public string Album;
        public string Year;
        public string Comment;
        public bool Reserved;
        public int Track;
        public Gener Gener;


        //00　Blues 布鲁斯
        //01　ClassicRock 古典摇滚
        //02　Country 乡村
        //03　Dance 舞曲
        //04　Disco 迪斯科
        //05　Funk 伤感爵士
        //06　Grunge 垃圾摇滚
        //07　Hip-Hop 饶舌
        //08　Jazz 爵士
        //09　Metal 金属
        //0A NewAge 前卫
        //0B　Oldies 怀旧
        //0C Other其他
        //0D　Pop 流行
        //0E　R&B 摇滚布鲁斯
        //0F　Rap 说唱
        //10　Reggae 雷盖扭摆舞
        //11　Rock 摇滚
        //12　Techno 电子流行乐
        //13　Industrial 工业
        //14　Alternative 多变
        //15　Ska 斯卡
        //16　DeathMetal 重金属
        //17　Pranks 恶作剧
        //18　Soundtrack 电影配音
        //19　Euro-Techno 神游舞曲
        //1A Ambient流行
        //1B Trip-Hop 迷幻舞曲
        //1C Vocal非纯音乐
        //1D　Jazz+Funk 爵士摇滚
        //1E　Fusion 合成音乐
    }
        //ID3V2.3 FrameID 
        //AENC： 音频加密技术
        //APIC： 附加描述
        //COMM： 注释，相当于ID3v1的Comment
        //COMR： 广告
        //ENCR： 加密方法注册
        //ETC0： 事件时间编码
        //GEOB： 常规压缩对象
        //GRID： 组识别注册
        //IPLS： 复杂类别列表
        //MCDI： 音乐CD标识符
        //MLLT： MPEG位置查找表格
        //OWNE： 所有权
        //PRIV： 私有
        //PCNT： 播放计数
        //POPM： 普通仪表
        //POSS： 位置同步
        //RBUF： 推荐缓冲区大小
        //RVAD： 音量调节器
        //RVRB： 混响
        //SYLT： 同步歌词或文本
        //SYTC： 同步节拍编码
        //TALB： 专辑，相当于ID3v1的Album
        //TBPM： 每分钟节拍数
        //TCOM： 作曲家
        //TCON： 流派（风格），相当于ID3V1的Genre
        //TCOP： 版权
        //TDAT： 日期
        //TDLY： 播放列表返录
        //TENC： 编码
        //TEXT： 歌词作者
        //TFLT： 文件类型
        //TIME： 时间
        //TIT1： 内容组描述
        //TIT2： 标题，相当于ID3v1的Title
        //TIT3： 副标题
        //TKEY： 最初关键字
        //TLAN： 语言
        //TLEN： 长度
        //TMED： 媒体类型
        //TOAL： 原唱片集
        //TOFN： 原文件名
        //TOLY： 原歌词作者
        //TOPE： 原艺术家
        //TORY： 最初发行年份
        //TOWM： 文件所有者（许可证者） 
        //TPE1： 艺术家相当于ID3v1的Artist
        //TPE2： 乐队
        //TPE3： 指挥者
        //TPE4： 翻译（记录员、修改员） 
        //TPOS： 作品集部分
        //TPUB： 发行人
        //TRCK： 音轨（曲号），相当于ID3v1的Track
        //TRDA： 录制日期
        //TRSN： Intenet电台名称
        //TRSO： Intenet电台所有者
        //TSIZ： 大小
        //TSRC： ISRC（国际的标准记录代码） 
        //TSSE： 编码使用的软件（硬件设置） 
        //TYER： 年代，相当于ID3v1的Year
        //TXXX： 年度
        //UFID： 唯一的文件标识符
        //USER： 使用条款
        //USLT： 歌词
        //WCOM： 广告信息
        //WCOP： 版权信息
        //WOAF： 官方音频文件网页
        //WOAR： 官方艺术家网页
        //WOAS： 官方音频原始资料网页
        //WORS： 官方互联网无线配置首页
        //WPAY： 付款
        //WPUB： 出版商官方网页
        //WXXX： 用户定义的URL链接


    public class MP3InfoStruct
    {
        public Dictionary<string, string> KV = new Dictionary<string, string>();

        public string GetTimeLength()
        {
            string time = null;
            KV.TryGetValue("TimeLength", out time);
            return time;
            //if (time=="") return "00:00:00";
            //var tp = TimeSpan.FromSeconds(Convert.ToDouble(time));
            //return
            //        tp.Hours.ToString("00") + ":" +
            //        tp.Minutes.ToString("00") + ":" +
            //        tp.Seconds.ToString("00");
        }
        public string GetTable()
        {
            string talb = "";
            KV.TryGetValue("TALB", out talb);
            if (talb == null) return "";
            return talb.Replace('\0', ' ').Trim();

        }
        public string GetSinger()
        {
            string singer="";
            KV.TryGetValue("TPE1", out singer);
            if (singer == null) return "";
            return singer.Replace('\0', ' ').Trim();
        }
        public string GetTtile()
        {
            string title;
            KV.TryGetValue("TIT2",out title);
            if (title == null) return "";
            return title.Replace('\0', ' ').Trim();
        }
        public string GetDate()
        {
            string date="";
            KV.TryGetValue("TYER", out date);
            if (date == null) return "";
            return date.Replace('\0', ' ').Trim();
        }
        public int GetRate()
        {
            string rate;
            KV.TryGetValue("BitRate", out rate);
            try
            {
                return System.Convert.ToInt32(rate)/1000;
            }
            catch (Exception ce)
            {
                Console.WriteLine("转换比特率出错 "+ ce.Message.Replace("\n",""));
                return 0;
            }
           
        }
        public string GetImage()
        {
            string image;
            KV.TryGetValue("APIC",out image);
            if (image == null) return "";
            int start = -1, length = 0;
            var array = System.Convert.FromBase64String(image);
            for(int i = 0; i < array.Length-1; i++)
            {
                if (array[i] == 255 && array[i + 1] == 216)
                {
                    start = i;
                    break;
                }
                
            }
            if (start == -1) return "";

            for(int j = array.Length - 1; j > start; j--)
            {
                if (array[j] == 255 && array[j + 1] == 217)
                {
                    length = j - start;
                }
            }

            byte[] data = new byte[length];
            Array.Copy(array, start, data, 0, length);
            
            return System.Convert.ToBase64String(data);
        }
        public string GetLRC()
        {
            string lrc;
            KV.TryGetValue("USLT",out lrc);
            if (lrc == null) return "";
            return lrc;
        }
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            foreach (var item in KV)
            {
               sb.Append( item.Key + " : " + item.Value + "\n");
            }
            return sb.ToString();
        }
    }


    class MP3Helper
    {
       
        FileStream fs;
        int FontHeaderSize = 0;
        int MPEGID = 0;
        int MPEGLayer = 0;
        int MPEGBRate = 0;
        int MPEGSRate = 0;
        //int MPEGSPRate = 0;
        int MPEGSC = 0;
        int MPEGFrameCount = 0;

        #region 静态数据
        //表 5.1.MPEG Layer III的边信息（side information）（单位：字节）
        //    	                    MPEG 1  MPEG 2 / 2.5(LSF)
        //立体声，联合立体声，双声道   32          17
        //                      单声道 17           9
        //声道的模式

        //边侧信息 [Layer,Sound]
        public static int[,] SoundChannel =
            {//  2.5 0 2 1
                {17,0,17,32 },//    00 – 立体声
                {17,0,17,32 },//    01 – 混合立体声
                {17,0,17,32 },//    10 – 双声道(两个单声道)
                {9,0,9,17 }//    11 – 一个声道(单声道)
            };

        //MPEG比特率索引表（单位：Kbit/s）M1 [Layer,index]
        public static int[,] BitRate1 = {
            /* MPEG-1 */
            { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            { 0,  32000,  40000,  48000,  56000,  64000,  80000,  96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000 ,0},
            { 0,  32000,  48000,  56000,  64000,  80000,  96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000 ,0},
            { 0,  32000,  64000,  96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000 ,0}
            
        };
        public static int[,] BitRate2 = {/* MPEG-2 ，MPEG-2.5 */
         /*0*/    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},    
         /*III*/  { 0,   8000,  16000,  24000,  32000,  40000,  48000,  56000, 64000,  80000,  96000, 112000, 128000, 144000, 160000,0 }, /* II & III  */
         /*II*/   { 0,   8000,  16000,  24000,  32000,  40000,  48000,  56000, 64000,  80000,  96000, 112000, 128000, 144000, 160000,0 }, /* II & III  */
         /*I*/    { 0,  32000,  48000,  56000,  64000,  80000,  96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000 ,0}
        };

        //MPEG帧的采样率索引表（单位：Hz） 【ID，索引】
        public static int[,] SamplingRate = {
            {11025 , 12000 , 8000,0},      //MPEG Version 2.5 
            { 0,0,0,0},                    //保留
            {22050, 24000, 16000,0},   //MPEG Version 2 (ISO/IEC 13818-3) 
            {44100, 48000, 32000,0}     //MPEG Version 1 (ISO/IEC 11172-3) 
        };

        //帧采样个数 [Layer,ID]
        public static int[,] SamplingPerFrame =
           {//mpeg2.5  01  mpeg2  mpeg1 
                { 0,0,0,0 }, //0
                { 576,0,576,1152},//Layer III
                { 1152,0,1152,1152},//Layer II
                { 384,0 ,384, 384 }//Layer I
            };

        #endregion

        public void Analysis(string path,double filesize,MP3InfoStruct MS)
        {
            double times = 0;
            fs = new FileStream(path, FileMode.Open,FileAccess.Read);
            bool v3h = GetID3V2Head(MS);
            AnalysisMPEGHeader();

            bool vbr = AnalysisVBRHeader();

            MS.KV.Add("MPEGID", MPEGID.ToString());
            MS.KV.Add("MPEGLayer", MPEGLayer.ToString());
            MS.KV.Add("MPEGSound", MPEGSC.ToString());
            MS.KV.Add("MPEGBitRateIndex", MPEGBRate.ToString());
            MS.KV.Add("MPEGSamplingRateIndex", MPEGSRate.ToString());
            MS.KV.Add("MPEGFrameSamplingRateIndex", SamplingPerFrame[MPEGLayer, MPEGID].ToString());


            
            if (!v3h){
                GetID3V1Head(MS);
                filesize -= 128;
            }
            else
            {
                filesize -= FontHeaderSize;
            }

            fs.Close();

            // CBR播放时间 = 文件大小（字节）× 8比特 / 字节 ÷（比特率 千比特/ 秒 ×1000 比特 / 千比特）
            //VBR MP3总的时长= 总的帧数 * （帧的采样个数 * （1 / 帧的采样率）） = 总的帧数 * 单个帧的时长 = 总的帧数 * （帧的采样个数* 每个帧的时长）

            if(vbr)
            {
                times = MPEGFrameCount * (SamplingPerFrame[MPEGLayer, MPEGID] * (1.0 / SamplingRate[ MPEGID,MPEGSRate]));
                if (MPEGID == 0b11 && MPEGLayer != 0)
                {
                    MS.KV.Add("BitRate", BitRate1[MPEGLayer, MPEGBRate].ToString());
                }
                else if (MPEGID != 0b01 && MPEGLayer != 0)
                {
                    MS.KV.Add("BitRate", BitRate2[MPEGLayer, MPEGBRate].ToString());
                }
            }
            else
            {
                if (MPEGID == 0b11 && MPEGLayer != 0)
                {
                    times = filesize * 8.0 / (BitRate1[MPEGLayer, MPEGBRate]);
                    MS.KV.Add("BitRate", BitRate1[MPEGLayer, MPEGBRate].ToString());
                }
                else if (MPEGID != 0b01 && MPEGLayer != 0)
                {
                    times = filesize * 8.0 / (BitRate2[MPEGLayer, MPEGBRate]);
                    MS.KV.Add("BitRate", BitRate2[MPEGLayer, MPEGBRate].ToString());
                }

            }
            MS.KV.Add("TimeLength",times.ToString());
            MS.KV.Add("SamplingRate", SamplingRate[MPEGID,MPEGSRate].ToString());

        }


        public static byte[] GetSubBytes(byte[] source,int size,int srcOffset = 0 )
        {
            byte[] tmp = new byte[size];
            Buffer.BlockCopy(source, srcOffset, tmp, 0, size);
            return tmp;
        }
        public int GetFrameTotalSize(byte[] size)
        {
            return (size[0] & 0x7f) * 0x200000  + (size[1] & 0x7f) * 0x4000  + (size[2] & 0x7f) * 0x80  + (size[3] & 0x7f);
        }
        public int GetFrameSize(byte[] size)
        {
            return size[0] * 0x1000000 + size[1] * 0x10000 + size[2] * 0x100 + size[3];
        }
        public static int ConvertByteToInt32(byte[] data)
        {
            switch (data.Length)
            {
                case 1:
                    return (int)data[0];
                case 2:
                    return data[0] << 8 | data[1];
                case 3:
                    return data[0] << 16 | data[1] << 8 | data[2];
                case 4:
                    return data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];

            }
            return 0;
        }

        public bool GetID3V1Head(MP3InfoStruct mis)
        {
            byte[] ID3V1 = new byte[128];
            fs.Seek(-128, SeekOrigin.End);
            fs.Read(ID3V1, 0, 128);

            string T = System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1,3));
            if (T != "TAG") return false;
            else mis = new MP3InfoStruct();
            //mis.KV.Add("Tag",T);
            T= System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 30 ,3));
            mis.KV.Add("Title", T);
            T = System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 30, 33));
            mis.KV.Add("Artist", T);
            T = System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 30, 63));
            mis.KV.Add("Album", T);
            T = System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 4, 93));
            mis.KV.Add("Year", T);
            if (GetSubBytes(ID3V1,1,125)[0] != 0)
            {
                mis.KV.Add("Reserved", "True");
                mis.KV.Add("Track", "0");
                T = System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 30, 97));
                mis.KV.Add("Comment", T);
            }
            else
            {
                mis.KV.Add("Reserved", "False");
                T = System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 28, 97));
                mis.KV.Add("Comment", T);
                T =System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 1, 125));
                mis.KV.Add("Track", T);
            }
            T = System.Text.Encoding.Default.GetString(GetSubBytes(ID3V1, 1, 127));
            mis.KV.Add("Tag", T);
            return true;
        }

        public bool GetID3V2Head(MP3InfoStruct ds)
        {
            byte[] ID3V2 = new byte[10];
            fs.Seek(0, SeekOrigin.Begin);
            fs.Read(ID3V2, 0, 10);

            if (System.Text.Encoding.Default.GetString(GetSubBytes(ID3V2, 3)) != "ID3")
            {
                fs.Seek(0, SeekOrigin.Begin);
                return false;
            }
            int TotalFrameSize = GetFrameTotalSize(GetSubBytes(ID3V2, 4, 6));

            byte[] cache = new byte[TotalFrameSize];
            fs.Read(cache, 0, TotalFrameSize);
            FontHeaderSize = 10 + TotalFrameSize;

            for (int offset=0; offset < TotalFrameSize;)
            {
                string Id = System.Text.Encoding.Default.GetString(GetSubBytes(cache,4,offset));
                
                offset += 4;
                int FrameSize = GetFrameSize(GetSubBytes(cache, 4, offset));

                if (FrameSize == 0) break;

                offset +=6;
                string Content;

                int type = (int)GetSubBytes(cache, 1, offset)[0];
                offset += 1;
                switch (type)
                    {
                        case 1:
                        case 2:
                            Content = System.Text.Encoding.Unicode.GetString(GetSubBytes(cache, FrameSize - 1, offset));
                            break;
                        case 3:
                            Content = System.Text.Encoding.UTF8.GetString(GetSubBytes(cache, FrameSize - 1, offset));
                            break;
                        default:
                          if(Id =="APIC")  Content = System.Convert.ToBase64String(GetSubBytes(cache, FrameSize - 1, offset));
                          else Content = System.Text.Encoding.Default.GetString(GetSubBytes(cache, FrameSize - 1, offset));
                            break;
                    }
                
                offset += FrameSize-1;
                if(!ds.KV.ContainsKey(Id))ds.KV.Add(Id,Content);
                //Console.WriteLine("Name="+Id+" Type="+type.ToString()+" Size="+(FrameSize-1).ToString());
            }

            return true;
        }


        public void AnalysisMPEGHeader()
        {
            //if (FontHeaderSize != 0) fs.Seek(FontHeaderSize,SeekOrigin.Begin);
            byte[] MPEGHeader = new byte[4];
            fs.Read(MPEGHeader, 0, 4);
            MPEGID = (MPEGHeader[1] & 0b00011000) >> 3;
            MPEGLayer = (MPEGHeader[1] & 0b00000110) >> 1;
            MPEGBRate = (MPEGHeader[2] & 0b11110000) >> 4;
            MPEGSRate = (MPEGHeader[2] & 0b00001100) >> 2;
            //int Ffill = (MPEGHeader[2] & 0b00000010) >> 1;
            MPEGSC = (MPEGHeader[3] & 0b11000000) >> 6;
       }

        public bool AnalysisVBRHeader()
        {
            int VBROffset = SoundChannel[MPEGSC,MPEGID];
            fs.Seek(VBROffset, SeekOrigin.Current);
            byte[] VBR = new byte[32];
            fs.Read(VBR, 0, 32);

            string symbol = System.Text.Encoding.Default.GetString(GetSubBytes(VBR, 4));
            if (symbol.IndexOf("XING") >= 0 || symbol.IndexOf("Info") >= 0)
            {
                int sy = ConvertByteToInt32(GetSubBytes(VBR, 4, 4));
                if ((sy & 0x0001) != 0)
                {
                    MPEGFrameCount = ConvertByteToInt32(GetSubBytes(VBR, 4, 8));
                    return true;
                }
            }
            else if (symbol.IndexOf("VBRI") >= 0)
            {
                MPEGFrameCount = ConvertByteToInt32(GetSubBytes(VBR, 4, 14));
                return true;
            }
            return false;
        }

    }
}
