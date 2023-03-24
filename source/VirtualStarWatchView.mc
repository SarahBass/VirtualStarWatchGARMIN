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
using Toybox.ActivityMonitor;
using Toybox.System;


class VirtualStarWatchView extends WatchUi.WatchFace {
    var profile = UserProfile.getProfile();
    //Need Activity and Activity Monitor for steps, calories, heart
    var Month;
    var venus2X = 85;
    var venus2Y = 10;
    var venumovey = 13;
      var star;
      var specialstar;
      var baby;
      var egg;
      var goal1;
      var goal2;
      var goal3;
      var goal4;
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
         star = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star,
             :locX=> venus2X,
            :locY=> venus2Y
        });
                 baby = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.baby,
             :locX=> venus2X,
            :locY=> venus2Y
        });

            egg = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.egg,
             :locX=> venus2X,
            :locY=> venus2Y
        });
         goal1 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.goal1,
             :locX=> 0,
            :locY=> 0
        });
                 goal2 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.goal2,
             :locX=> 0,
            :locY=> 0
        });
                 goal3 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.goal3,
             :locX=> 0,
            :locY=> 0
        });
                 goal4 = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.goal4,
             :locX=> 0,
            :locY=> 0
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

     

        switch(fulldateString){
           case "Dec 25":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.stardecember,
            :locX=> venus2X,
            :locY=> venus2Y
        });
            break;
            case "Dec 1":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.stardecember,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
            case "Dec 24":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.stardecember,
            :locX=> venus2X,
            :locY=> venus2Y
        });
            break;
            case "Apr 9":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.stareaster,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
             case "Mar 31":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.stareaster,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
            case "Apr 20":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.stareaster,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
             case "Apr 5":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.stareaster,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;     
             case "Jul 4":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starjuly4,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
             case "Nov 11":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starjuly4,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
            case "May 29":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starjuly4,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
            case "Jun 19":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starjuneteenth,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
            case "Jan 15":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starjuneteenth,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
             case "Mar 17":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starmarch,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;       
                                 case "Nov 25":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starnovember,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break; 
                                   case "Nov 24":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starnovember,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;    
                                    case "Nov 4":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.starnovember,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;   
                                     case "Oct 1":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.staroctober,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break; 
                                     case "Oct 13":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.staroctober,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;   
                                         case "Oct 31":  
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.staroctober,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break; 
         default:                                       
 switch (dayString){
        case "Mon":
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star7,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
       case "Tue":
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star1,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;      
      case "Wed":
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star2,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
      case "Thu":
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star3,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
      case "Fri":
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star4,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
       case "Sat":
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star5,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;      
      case "Sun":
            specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star6,
            :locX=> venus2X,
            :locY=> venus2Y
        });
             break;
       default:    
       specialstar = new WatchUi.Bitmap({
            :rezId=>Rez.Drawables.star4,
            :locX=> venus2X,
            :locY=> venus2Y
        });
      }
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
        var goal = 10000; 
        var fakesteps = 8000;
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


// get ActivityMonitor info
var info = ActivityMonitor.getInfo();

var steps = info.steps;
var calories = info.calories;

System.println("You have taken: " + steps +
               " steps and burned: " + calories + " calories!");

  // Update the view
        var view = View.findDrawableById("TimeLabel") as Text;
        var view2 = View.findDrawableById("DateLabel") as Text;
  var view3 = View.findDrawableById("batteryLabel") as Text;
     var view4 = View.findDrawableById("heartLabel") as Text;
      var view5 = View.findDrawableById("stepsLabel") as Text;
    var view6 = View.findDrawableById("caloriesLabel") as Text;
       
       
        
     
       // view4.setColor(getApp().getProperty("ForegroundColor") as Number);
      //  view5.setColor(getApp().getProperty("ForegroundColor") as Number);
    view.setText(timeString);
        view2.setText(dateString);
        view3.setText("100");
        view4.setText("60");
      view5.setText(""+steps);

        //view4.setText("60");
       // view5.setText("1000");
     view6.setText(""+calories);
        // Call the parent onUpdate function to redraw the layout
        //call star initialize for monthly and daily
        //call eyes and mouth here for second and minute update
        View.onUpdate(dc);

      
   
        Month.draw(dc);
        if (fakesteps < goal/4){ egg.draw(dc);  }
        else if (fakesteps > (goal/4) && fakesteps < ((goal*2)/4)){ baby.draw(dc);  goal1.draw(dc);}
        else if (fakesteps > ((goal*2)/4) && fakesteps < ((goal*3)/4)){ star.draw(dc);  goal2.draw(dc);}
        else if (fakesteps > ((goal*3)/4) && fakesteps < goal){ star.draw(dc);  goal3.draw(dc);}  
        else if (fakesteps >= goal ){ specialstar.draw(dc);  goal4.draw(dc);}      
        else{ star.draw(dc);}    
        

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
         egg.locY = venus2Y;
          baby.locY = venus2Y;
           specialstar.locY = venus2Y;
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
            egg.locY = venumovey;
            baby.locY = venumovey;
           specialstar.locY =venumovey;
            
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
