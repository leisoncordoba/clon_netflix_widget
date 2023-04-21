import 'package:flutter/material.dart';
import 'package:clon_netflix_widget/componentes/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children:<Widget>[
      this.cabecera(),
      this.infoSerie(),
      this.botonera()
      ],

    );
  }
  Widget cabecera(){
 return Stack(
       children: <Widget>[
        Image.network('https://media.revistagq.com/photos/616d3352115cec0315ba5edf/master/pass/you.jpeg',
        fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[
              
              Colors.black38,
              Colors.black
            ]
            )
          ),
        ),
         SafeArea(child:NavBarSuperior() ),
       ],
       
        );
  }
  Widget infoSerie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text('Telenovesco', style: TextStyle(color: Colors.white,fontSize: 10.0),),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 5.0  ),
        Text('Suspenso Insostenible', style: TextStyle(color: Colors.white,fontSize: 10.0)),
         Icon(Icons.fiber_manual_record,color: Colors.red,size: 5.0  ),
        Text("De Suspenso", style: TextStyle(color: Colors.white,fontSize: 10.0)),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 5.0  ),
        Text("Adolecentes", style: TextStyle(color: Colors.white,fontSize: 10.0))
      ],
    );
  }
  Widget botonera(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              Text("Mi Lista", style: TextStyle(color: Colors.white, fontSize: 10.0 ),)
          ],
        ),
        
        TextButton.icon( 
          
          onPressed: (){}, 
          
        icon: Icon(Icons.play_arrow,color: Colors.white,),
        label: Text("Reproducir"),
        ),
        Column(
          children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white),
              Text("Info", style: TextStyle(color: Colors.white, fontSize: 10.0 ),)
          ],
        ),
      ],
    );
  }
}