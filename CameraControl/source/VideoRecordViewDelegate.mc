using Toybox.WatchUi;

class VideoRecordViewDelegate extends WatchUi.BehaviorDelegate 
{

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new CameraControlMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }
    
	function onSelect() {
		Comms.send("vi");
	}
	
	function onNextPage() {
		WatchUi.popView(WatchUi.SLIDE_UP);
	}
	
	function onSwipe(evt) {
		if(evt.getDirection() == WatchUi.SWIPE_UP)
		{
			WatchUi.popView(WatchUi.SLIDE_UP);
		}
	}
}