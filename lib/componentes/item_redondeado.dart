import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      
        
      ],
    );
        
  }
  Widget imagenRedondeada(String imagen_grande,String imagen_letras){
    return  Row(
      children: <Widget>[
 Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Container(
          height: 50.0,
          width: 50.0,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110.0),
            border: Border.all(
              color: Colors.yellow,
              width: 2.0,
            ),
          ),
         child: ClipOval(
          child: Image.network(imagen_grande,
          fit: BoxFit.cover,
          ),

        )
        ),
        
        Image.asset(imagen_letras,width: 70.0)
       ],
    ),
    SizedBox(width: 10.0,)
      ],
    );
  } 
}