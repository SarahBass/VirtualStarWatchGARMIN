import Toybox.Application;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class VirtualStarWatchView extends WatchUi.WatchFace {
    var myBitmap;
    var myBitmap0;
     var myBitmap1;
      var myBitmap2;
      var eyes;
      var mouth;
    function initialize() {
        WatchFace.initialize();
        View.initialize();
        myBitmap = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.myBitmap,
            :locX=>0,
            :locY=>0
        });
              myBitmap0 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.myBitmap0,
            :locX=>0,
            :locY=>125
        });
        myBitmap1 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.myBitmap1,
            :locX=>0,
            :locY=>0
        });
             myBitmap2 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.myBitmap2,
            :locX=>70,
            :locY=>30
        });
        eyes = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.eyes,
            :locX=>70,
            :locY=>30
        });
        mouth = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.mouth,
            :locX=>70,
            :locY=>30
        });
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.WatchFace(dc));
        
    }


    function onShow() as Void {
    }




    // Update the view
    function onUpdate(dc as Dc) as Void {
        
        // Get the current time and format it correctly
        var timeFormat = "$1$:$2$";
        var clockTime = System.getClockTime();
        var hours = clockTime.hour;
        if (!System.getDeviceSettings().is24Hour) {
            if (hours > 12) {
                hours = hours - 12;
            }
        } else {
            if (getApp().getProperty("UseMilitaryFormat")) {
                timeFormat = "$1$$2$";
                hours = hours.format("%02d");
            }
        }
        var timeString = Lang.format(timeFormat, [hours, clockTime.min.format("%02d")]);

        // Update the view
        var view = View.findDrawableById("TimeLabel") as Text;
        view.setColor(getApp().getProperty("ForegroundColor") as Number);
        view.setText(timeString);

        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        myBitmap.draw(dc);
        myBitmap0.draw(dc);
        myBitmap1.draw(dc);
        myBitmap2.draw(dc);
        eyes.draw(dc);
        mouth.draw(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    // The user has just looked at their watch. Timers and animations may be started here.
    function onExitSleep() as Void {
    }

    // Terminate any active timers and prepare for slow updates.
    function onEnterSleep() as Void {
    }

}
