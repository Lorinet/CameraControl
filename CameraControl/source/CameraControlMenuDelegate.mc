using Toybox.WatchUi;
using Toybox.System;

class CameraControlMenuDelegate extends WatchUi.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) 
    {
        if (item == :item_1) 
        {
        	Comms.send("fo");
        } 
        else if (item == :item_2) 
        {
            Comms.send("fc");
        }
        else if (item == :item_3) 
        {
            Comms.send("ff");
        }
        else if (item == :item_4) 
        {
            Comms.send("bf");
        }
        else if(item == :item_5)
        {
        	Comms.send("hq");
        }
        else if(item == :item_6)
        {
        	Comms.send("mq");
        }
        else if(item == :item_7)
        {
        	Comms.send("lq");
        }
        else if(item == :item_8)
        {
        	Comms.send("op");
        }
        else if(item == :item_9)
        {
        	Comms.send("ol");
        }
    }
}