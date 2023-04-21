import 'package:clon_netflix_widget/componentes/cartel_principal.dart';
import 'package:clon_netflix_widget/componentes/item_imagen.dart';
import 'package:flutter/material.dart';
import 'package:clon_netflix_widget/componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(

        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Avances',ItemRedondeado(
).imagenRedondeada("https://m.media-amazon.com/images/M/MV5BN2VjOTkwMjgtYWEyMy00MzNmLTllMjktNDI1ZmRhYTAwYTg1XkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg", "assets/imgs/Breaking_Bad_logo.svg.png")
,6),
        
          SizedBox(height: 10.0,),
          this.listaHorizontal("Programas Sobre Viajes", ItemImg(), 6),
                SizedBox(height: 10.0,),
          this.listaHorizontal("Tendecias", ItemImg(), 6),
                SizedBox(height: 10.0,),
          this.listaHorizontal("Mi Lista", ItemImg(), 6),
           SizedBox(height: 20.0,),
          
        ],
        
        ),
       bottomNavigationBar: this.navInferior(),

    );
  }
  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
         label: "Inicio"
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Buscar"
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.library_music),
        label: "Proximamente", 
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.arrow_downward),
        label: "Descargas"
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.more_horiz),
        label: "mas"
      )
    ],
    );
  }
  Widget listaHorizontal(String titulo,Widget item, int cantidad){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       Text(
            titulo,
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15.0 
          
          ),
          
          ),
          Container(
            height: 50.0,
            
         child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
             itemBuilder: (context, index) {
               return item;
             },
           
           
          )
          )
      ],
    );
  }
}