
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profile_ui/stat_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Profile Page Ui',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //let's start by adding the data for the images
  String avatarUrl = "https://cdn.unenvironment.org/2022-03/field-ge4d2466da_1920.jpg";

  List<String> imagePost = [
    "https://scx2.b-cdn.net/gfx/news/2019/2-nature.jpg",
    "https://nature-mentor.com/wp-content/uploads/2017/11/Mountain-Wilderness-Sunrise.jpg",
    "https://ichef.bbci.co.uk/images/ic/624x351/p01lymgh.jpg",
    "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/Zugpsitze_mountain.jpg?crop=0,176,3008,1654&wid=4000&hei=2200&scl=0.752",
    "https://i.pinimg.com/originals/44/39/95/443995c7ae48644c3db28122eb7be334.jpg",
    "https://c4.wallpaperflare.com/wallpaper/681/23/621/lake-emerald-summer-mountains-wallpaper-preview.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text('Profile Page',style: TextStyle(fontSize: 18,color: Colors.black),),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            
            SizedBox(height: 12.0,),

            Text('Abu Torab Monir',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

            Text('abutorabmonir88599@gmail.com',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w400),),


            SizedBox(height: 16.0,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                 statWidget("post", "7"),

                 statWidget("Followers", "487"),

                statWidget("Following", "9"),

              ],
            ),

            SizedBox(height: 15.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                FlatButton(onPressed: (){},
                  splashColor: Colors.white,
                  child: Text('Follow',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 8.0),
                  color: Colors.black,
                ),

                SizedBox(width: 12.0,),

                OutlineButton(onPressed: (){},
                  child: Text('Message'),
                  padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 8.0),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 18.0,
                thickness: 0.8,
                color: Colors.black,
              ),
            ),

            Expanded(
                child: Container(
                  child: GridView.builder(
                      itemCount: imagePost.length,

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),

                      itemBuilder: (context, index){
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 2.0,vertical: 2.0),
                          
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: NetworkImage(imagePost[index]),fit: BoxFit.fill),
                          ),
                        );
                      }
                  ),
                )
            )
          ]
        ),
      ),
    );
  }
}


