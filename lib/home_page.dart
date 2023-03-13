import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:video_player_app/video_info.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List subj=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      subj=json.decode(value);
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top:50,left:20 ,right: 20),
        child: Column(
          children: [
            Row(
              children: [


                Text(
                  "eConnect",
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                  size: 20,
                  color:color.AppColor.homePageIcons,
                ),
                SizedBox(width: 10),
                Icon(Icons.calendar_today_outlined,
                  size:20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(width: 15,),
                Icon(Icons.arrow_forward_ios,
                  size:20,
                  color: color.AppColor.homePageIcons,
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>VideoInfo());
                  },
                  child: Icon(Icons.arrow_forward,
                    size:20 ,
                    color: color.AppColor.homePageIcons,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.only(left: 20,top: 20,right: 20, ),
                width: MediaQuery.of(context).size.width,
                height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                      end:Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(10),
                  bottomLeft:Radius.circular(10),
                  bottomRight:Radius.circular(10),
                  topRight:Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    offset:Offset(5, 10),
                    blurRadius:10,
                    color:color.AppColor.gradientSecond.withOpacity(0.3)
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1 ere Anne Bac",
                    style: TextStyle(
                      fontSize: 16,
                      color: color.AppColor.homePageContainerTextSmall,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Bievenue ",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.homePageContainerTextBig,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "dans votre espace",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end
                    ,
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 10,),
                          Icon(Icons.timer,size: 20,color: color.AppColor.homePageContainerTextSmall,),
                          SizedBox(width: 10,),
                          Text(
                            "Start your pomodoro",
                            style: TextStyle(
                              fontSize: 16,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          boxShadow: [
                            BoxShadow(
                              color: color.AppColor.gradientFirst,
                              blurRadius: 15,

                              offset: Offset(4,8),
                            )
                          ]
                        ),
                          child: Icon(Icons.play_circle_fill
                            , size: 34
                            ,color: color.AppColor.homePageContainerTextSmall,
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,

              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30,),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/card.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      boxShadow:[
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-1,-5),
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                        )
                      ]
                    ),
                    ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(right: 250,bottom: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/student1.png",
                        ),
                        //fit: BoxFit.cover,
                      ),

                  ),

                ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: EdgeInsets.only(left: 150, top: 50),
                    child:Column(
                      children: [
                        Text(
                          "Vous etes en vacances",
                          textAlign:TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: color.AppColor.homePageDetail,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        RichText(text:
                        TextSpan(
                          text: "n'oubliez pas \n",
                            style: TextStyle(
                            color: color.AppColor.homePagePlanColor,
                            fontSize: 16,
                          ),
                            children:[
                              TextSpan(
                                text: "tes études meme en vacance",
                                style: TextStyle(
                                  color: color.AppColor.homePagePlanColor,
                                  fontSize: 16,
                                )
                              )
                            ]
                        ))
                      ],
                    )
                  )
                ] ,
              ),
              ),
            Row(
              children: [
                Text(
                  "Vos Matières",
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: color.AppColor.homePageTitle,
                  ),
                )
              ],
            ),
            Expanded(child:OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.builder(
                    itemCount: (subj.length.toDouble()/2).toInt(),
                    itemBuilder: (_,i){

                  int a=2*i;
                  int b=2*i+1;
                    return
                      Row(
                        children: [


                          Container(
                            width: (MediaQuery.of(context).size.width-90)/2,
                            height: 200,

                            margin:EdgeInsets.only(left: 30,bottom: 15,top: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image:DecorationImage(
                              image: AssetImage(
                                subj[a]['img'],
                              )
                            ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5,5),
                                  color: color.AppColor.gradientSecond.withOpacity(0.1)
                                ),BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(-5,-5),
                                    color: color.AppColor.gradientSecond.withOpacity(0.1)
                                )
                              ]
                          ),
                            child: Center(
                              child: Align(
                                alignment:Alignment.bottomCenter ,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    subj[a]['title'],
                                    style:TextStyle(
                                      fontSize:20,
                                      color:color.AppColor.homePageDetail,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),


                          Container(
                            width: (MediaQuery.of(context).size.width-90)/2,
                            height: 200,
                            margin:EdgeInsets.only(left: 30,bottom: 15,top: 15),

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image:DecorationImage(
                                    image: AssetImage(
                                      subj[b]['img'],
                                    )
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5,5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1)
                                  ),BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5,-5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1)
                                  )
                                ]
                            ),
                            child: Center(
                              child: Align(
                                alignment:Alignment.bottomCenter ,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    subj[b]['title'],
                                    style:TextStyle(
                                      fontSize:20,
                                      color:color.AppColor.homePageDetail,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],


                    );
                  }),
                )
            ),
            ),
              ],
              )));


}}
