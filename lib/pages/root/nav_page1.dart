import 'package:amcmobile/pages/navigation/widget/appbar_widgets.dart';
import 'package:amcmobile/themes/app_colors.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Navpage extends GetView{
  @override
  Widget build(BuildContext context) {
    context.theme;
    return Scaffold(
      appBar: navAppbar(),
        body: Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                    width: 380,
                    child: Carousel(
                      images: [
                        AssetImage("assets/power3.jpg",),
                        AssetImage("assets/wall1.jpg"),
                        AssetImage("assets/wall2.jpg",),
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.lightGreenAccent,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.purple.withOpacity(0.5),
                      borderRadius: true,
                    )
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: AppColors.getThemeColor(),width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: GridView.count(crossAxisCount: 2,childAspectRatio: 2.0,
                        children: <Widget>[
                          NavCard("assets/clocks.gif", "RealTime","realtime",Colors.green,BorderRadius.only(bottomLeft: Radius.circular(50))),
                          NavCard("assets/charts.gif", "Trends","trends",Colors.pink,BorderRadius.only(topRight: Radius.circular(50))),
                          NavCard("assets/network.gif", "Network","network",Colors.blue,BorderRadius.only(bottomLeft: Radius.circular(50))),
                          NavCard("assets/excels1.gif", "Reports","reports",Colors.deepOrangeAccent,BorderRadius.only(topRight: Radius.circular(50))),
                          NavCard("assets/events.jpg", "Sldc","sldc",Colors.purple,BorderRadius.only(bottomLeft: Radius.circular(50))),
                          NavCard("assets/events.jpg", "Events","events",Colors.brown,BorderRadius.only(bottomLeft: Radius.circular(50))),
                          NavCard("assets/events.jpg", "Dashboard","dashboard",Colors.brown,BorderRadius.only(bottomLeft: Radius.circular(50))),
                        ]
                    ),
                  ),
                ) ,
                SizedBox(height: 5,),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: AppColors.getThemeColor(),width: 2),
                  ),
                  child: GridView.count(crossAxisCount: 1,childAspectRatio: 4.0,
                    children: <Widget>[
                      NavCard1("assets/charts.gif", "Admin","admin",Colors.indigoAccent,BorderRadius.only(topRight: Radius.circular(50)))
                    ],
                  ),
                ),
                SizedBox(height: 20,)
              ],
            )
        )
    );
  }

}
Widget NavCard (String icon,String textvalue,String page,Color Boxcolor,BorderRadius Border){
  return Card(
      elevation: 5.0,
      //color: Colors.black,
      child: InkWell(
        onTap: (){
          Get.toNamed(page);
        },
        child: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(60) ),
                      color: Boxcolor,
                    ),
                    alignment: Alignment.center,
                    child: Text(textvalue, style: TextStyle(color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(color: Colors.white,
                      alignment: Alignment.bottomRight,
                      height: double.infinity,
                      child: Image.asset(icon,width: 100,)
                  )
              ),
            ],
          ),
        ),
      )
  );
}
Widget NavCard1 (String icon,String textvalue,String page,Color Boxcolor,BorderRadius Border){
  return Card(
      elevation: 5,

      shadowColor: Colors.grey,
      // shape: RoundedRectangleBorder(borderRadius: Border),
      child: InkWell(
        onTap: (){   Get.toNamed(page);},
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(70) ),
                      color: Boxcolor,
                    ),
                    alignment: Alignment.center,
                    // margin: EdgeInsets.only( top:130,left: 40),
                    child: Text(textvalue, style:
                    TextStyle(color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                  flex: 0,
                  child: Container(color: Colors.white,
                      height: double.infinity,
                      alignment: Alignment.bottomRight,
                      child: Image.asset(icon,width: 70,)
                  )
              ),
            ],
          ),
        ),
      )
  );
}