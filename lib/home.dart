import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:homepage/color.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          backgroundColor: Colors.white,
          appBar :buildappbar(),
          body: body(context),
          bottomNavigationBar: bottom(context),


        ),
      );
  }
}

AppBar buildappbar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 150,
    centerTitle: true,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight:Radius.circular(30),
        ),
        color: "49E5EA".toColor()

      ),
    ),
    title: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
              'Discover Best',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(height:15,),
          Text(
              'Discover best',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
        ],
      ),
    ),
  );
}

Widget body(BuildContext context){
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    padding: EdgeInsets.all(1),
    child: Column(
      children: [
        SizedBox(height: 150,),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: IconButton(
                iconSize: 200,
                onPressed: () {},
                icon: Image.asset("assets/icons/bot.png"),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10),
          child: Row(
            children: [
              Text(
                "News",
                style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 18,),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){},
                child: Row(
                  children: [
                    Text("See all",style: TextStyle(fontSize: 14,color: Colors.grey.shade700),),
                    Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey.shade700,),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,
                      elevation: 3,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            child: Ink.image(
                              image: AssetImage("assets/images/hello.png"),
                              height: 102,
                              width: 157,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                      SizedBox(
                      height: 5,
                    ),
                      Text("Subject Name")
                    ],
                  );
                }
              ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10),
          child: Row(
            children: [
              Text(
                "Featured",
                style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 18,),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){},
                child: Row(
                  children: [
                    Text("See all",style: TextStyle(fontSize: 14,color: Colors.grey.shade700),),
                    Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey.shade700,),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 270,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount:5 ,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder:(context,index){
                return Container(
                  height: 300,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  ClipRRect(
                                    child: Ink.image(
                                      image: AssetImage("assets/images/bg.png"),
                                      height: 170,
                                      width: 230,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: -2,
                                    right: -2,
                                    child: Container(
                                      width: 75,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        backgroundBlendMode: BlendMode.hardLight,
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          topRight: Radius.circular(20)
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Price",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: "49E5EA".toColor(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Container(
                                      width: 60,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.star_rounded,color:"49E5EA".toColor(),),
                                              SizedBox(width: 5,),
                                              Text(
                                                "2.5",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: "49E5EA".toColor(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text("Title"),
                          subtitle: Text("Subtitle"),
                          trailing: FloatingActionButton.small(
                            backgroundColor: "49E5EA".toColor(),
                            elevation: 0,
                            onPressed: (){},
                            child:Icon(Icons.add) ,),
                        )
                      ],
                    ),
                  ),

                );

              } ),

        ),
        Padding(
          padding: EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10),
          child: Row(
            children: [
              Text(
                "Popular Mentor",
                style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 18,),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                },
                child: Row(
                  children: [
                    Text("See all",style: TextStyle(fontSize: 14,color: Colors.grey.shade700),),
                    Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey.shade700,),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount:5 ,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context,index){
            return Container(
              width: 211,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ListTile(
                leading: CircleAvatar(),
                  title: Text("name"),
                  subtitle: Text("Deets"),
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 120,)

      ],

    ),
  );
}



Widget bottom(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return Material(
    color: Colors.transparent, // Set the desired background color here
    child: ClipPath(
      clipper: ProsteBezierCurve(
        position: ClipPosition.top,
        list: [
          BezierCurveSection(
            start: Offset(screenWidth, 20),
            top: Offset(screenWidth / 2, 0),
            end: Offset(0, 20),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        height: 110,
        child: GNav(
          gap: 8,
          haptic: true,
          color: Colors.grey,
          activeColor: Colors.black,
          tabBackgroundColor: Colors.lightBlueAccent.shade100,
          padding: EdgeInsets.all(15),
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
            ),
            GButton(
              icon: Icons.stacked_bar_chart_outlined,
              text: "Stats",
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: "Shop",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
          ],
        ),
      ),
    ),
  );
}



/*
Widget bottom(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 12),
    child: GNav(
      hoverColor: "49E5EA".toColor(),
      iconSize: 20,
      gap: 8,
      haptic: true,
      duration: Duration(milliseconds: 700),
      color: Colors.grey,
      tabBackgroundColor: "49E5EA".toColor(),
      padding: EdgeInsets.all(15),
      tabs: [
        GButton(
          icon: Icons.home_outlined,
          text: "Home",
        ),
        GButton(
          icon: Icons.stacked_bar_chart_outlined,
          text: "Stats",
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: "Shop",
        ),
        GButton(
          icon: Icons.person,
          text: "Profile",
        ),
      ],
    ),
  );
}

 */



