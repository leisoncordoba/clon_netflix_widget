import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Row(

      children: <Widget>[
 Image.network("https://caracoltv.brightspotcdn.com/dims4/default/c4e92b3/2147483647/strip/false/crop/640x1000+0+0/resize/1200x1875!/quality/90/?url=http%3A%2F%2Fcaracol-brightspot.s3.amazonaws.com%2F0a%2Fbc%2F3f55d18948439d2ff2b9209b6985%2Fbetter-call-saul-en-netflix-donde-ver-temporada-6.jpg",width: 100.0,),
      SizedBox(width: 10.0)
      ],
    );
        
      
  }
}