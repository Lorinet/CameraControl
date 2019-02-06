using Toybox.WatchUi;

class CameraControlDelegate extends WatchUi.BehaviorDelegate 
{

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new CameraControlMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }
    
	function onSelect() {
		Comms.send("sh");
	}
	
	function onNextPage() {
		WatchUi.pushView(new VideoRecordView(), new VideoRecordViewDelegate(), WatchUi.SLIDE_UP);
	}
	
	function onSwipe(evt) {
		if(evt.getDirection() == WatchUi.SWIPE_UP)
		{
			WatchUi.pushView(new VideoRecordView(), new VideoRecordViewDelegate(), WatchUi.SLIDE_UP);
		}
	}
}