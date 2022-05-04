

import 'package:flutter/cupertino.dart';

Widget statWidget (String title, String stat){
  return Expanded (
    child: Column(
      children: [
        Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

        Text(stat,style: TextStyle(fontSize: 16,),),

      ],
    ),
  );
}