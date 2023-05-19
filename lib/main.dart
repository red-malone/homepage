import 'package:flutter/material.dart';
import 'package:homepage/color.dart';

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
        appBar :buildappbar(),
        body: body(),


      ),
    );
  }
}

AppBar buildappbar(){
  return AppBar(
    backgroundColor: "49E5EA".toColor(),
    elevation: 0,
    toolbarHeight: 150,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Discover Best',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Discover best',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: IconButton(
                    color: Colors.green,
                    onPressed: (){}, icon: Icon(Icons.filter_list)),
              )
          ),
        ),
      ),
    ),
  );
}

Widget body(){
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
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
          width: 400,
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
                              image: AssetImage("assets/images/img.png"),
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

      ],

    ),
  );
}