import Toybox.Application;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
using Toybox.Time;
using Toybox.Time.Gregorian;
using Toybox.System; 
using Toybox.UserProfile;
import Toybox.ActivityMonitor;
import Toybox.Activity;
import Toybox.Math;
import Toybox.Application.Storage;
class VirtualStarWatchView extends WatchUi.WatchFace {
    var profile = UserProfile.getProfile();
    //Need Activity and Activity Monitor for steps, calories, heart
    var Month;
    var venus2X = 85;
    var venus2Y = 10;
    var venumovey = 13;
      var star;
      var eyes;
      var eyes2;
      var mouth1;
      var mouth2;
      var mouth3;
      var mouth4;
    function initialize() {
        
        WatchFace.initialize();
        View.initialize();
var today = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);
var fulldateString = Lang.format(
    "$1$ $2$",
    [
        today.month,
        today.day,
    ] 
);
var monthString = Lang.format(
    "$1$",
[
today.month
]);
var dayString = Lang.format(
    "$1$",
[
today.day_of_week
]);
        eyes = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.eyes,
            :locX=> venus2X,
            :locY=> venus2Y
        });
        mouth1 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.mouth1,
             :locX=> venus2X,
            :locY=> venus2Y
        });
 eyes2 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.eyes1,
            :locX=> venus2X,
            :locY=> venus2Y
        });
        mouth2 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.mouth2,
             :locX=> venus2X,
            :locY=> venus2Y
        });
         mouth3 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.mouth3,
             :locX=> venus2X,
            :locY=> venus2Y
        });
         mouth4 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.mouth4,
             :locX=> venus2X,
            :locY=> venus2Y
        });

        switch(fulldateString){
           case "Feb 10": 
            Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.chinesenewyear,
            :locX=>0,
            :locY=>0
        });
        break;
         case "May 5": 
            Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.dia,
            :locX=>0,
            :locY=>0
        });
        break;
         case "Nov 1": 
            Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.dia,
            :locX=>0,
            :locY=>0
        });
        break;
         case "Nov 2": 
            Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.dia,
            :locX=>0,
            :locY=>0
        });
        break;
         case "Jan 29": 
            Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.chinesenewyear,
            :locX=>0,
            :locY=>0
        });
        break;
         case "Feb 10": 
            Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.chinesenewyear,
            :locX=>0,
            :locY=>0
        });
        break;
        default:    
 switch (monthString){
        case "Jan":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.January,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Feb":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.February,
            :locX=>0,
            :locY=>0
        });
        break;
        
        case "Mar":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.March,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Apr":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.April,
            :locX=>0,
            :locY=>0
        });
        break;
        case "May":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.May,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Jun":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.June,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Jul":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.July,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Aug":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.August,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Sep":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.September,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Oct":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.October,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Nov":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.November,
            :locX=>0,
            :locY=>0
        });
        break;
        case "Dec":
        Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.December,
            :locX=>0,
            :locY=>0
        });
        break;                                                    
        default:    
            Month = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.September,
            :locX=>0,
            :locY=>0
        });  
         
        }
        }

     

 switch (dayString){
        case "Mon":
            star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
       case "Tue":
            star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star1,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;      
      case "Wed":
            star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star2,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
      case "Thu":
            star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star3,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
      case "Fri":
            star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star4,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
       case "Sat":
            star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star5,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;      
      case "Sun":
            star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star6,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
       default:    
       star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star,
            :locX=> venus2X,
            :locY=> venus2Y
        });
      }


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
        var minutes = clockTime.min;
        var seconds = clockTime.sec;
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
var today = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);
var dateString = Lang.format(
    "$1$ , $2$ $3$ $4$",
    [
        today.day_of_week,
        today.month,
        today.day,
        today.year
    ] 
);

System.println(dateString); // e.g. "16:28:32 Wed 1 Mar 2017"

        // Update the view
        var view = View.findDrawableById("TimeLabel") as Text;
        var view2 = View.findDrawableById("DateLabel") as Text;
        view.setColor(getApp().getProperty("ForegroundColor") as Number);
        view.setText(timeString);
        view2.setColor(getApp().getProperty("ForegroundColor") as Number);
        view2.setText(dateString);

        // Call the parent onUpdate function to redraw the layout
        //call star initialize for monthly and daily
        //call eyes and mouth here for second and minute update
        View.onUpdate(dc);
   
        Month.draw(dc);
        star.draw(dc);
        

        if (minutes%2 == 0){
        eyes.draw(dc);
        
        }else {
            eyes2.draw(dc);
        }

       if (minutes%4 == 1){
        if (seconds%2 == 0){mouth1.draw(dc);}else{mouth2.draw(dc);}
       }
       else if (minutes%4 == 2){
        if (seconds%2 == 0){mouth4.draw(dc);}else{mouth2.draw(dc);}
       }
       else if (minutes%4 == 3){
        if (seconds%2 == 0){mouth3.draw(dc);}else{mouth2.draw(dc);}
       }
       else{if (seconds%2 == 0){mouth1.draw(dc);}else{mouth4.draw(dc);}}

        if (seconds%2 == 0){
         mouth1.locY = venus2Y;
         mouth2.locY = venus2Y;
         mouth3.locY = venus2Y;
         mouth4.locY = venus2Y;
         star.locY = venus2Y;
         eyes.locY = venus2Y;
         eyes2.locY = venus2Y;
        }else {
            mouth1.locY = venumovey;
            mouth2.locY = venumovey;
            mouth3.locY = venus2Y;
            mouth4.locY = venus2Y;
            star.locY = venumovey;
            eyes.locY = venumovey;
            eyes2.locY = venumovey;
            
        }
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
