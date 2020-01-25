using MediaPlayer.Modles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace MediaPlayer.Converts
{
    class SideListSelectors : DataTemplateSelector
    {
        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if(item != null && item is SideBarItem)
            {
                var fe = container as FrameworkElement;
                if (fe != null)
                {
                    SideBarItem si = item as SideBarItem;
                    if (si.Interactiveable)
                        return fe.FindResource("EnableInactive") as DataTemplate;
                    else
                        return fe.FindResource("UnEnableInactive") as DataTemplate;
                }
               
            }
            return base.SelectTemplate(item, container);

        }
    }


}
