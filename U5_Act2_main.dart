import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Listview de imágenes"),
          ),
          body:
          ListView(
            children: <Widget>[
              getImage('https://www.dgee-evaluaenlinea.unam.mx:8383/QuizSEDDTE-war/faces/suayedD/img/SUAyED_distancia_N.png','SUAyED'),
              getImage('https://github.com/nisrulz/flutter-examples/raw/develop/image_from_network/img/loop_anim.gif','Gatito'),
              getImage('https://github.com/nisrulz/flutter-examples/raw/develop/image_from_network/img/flutter_logo.png','Flutter'),
              getImage('https://i.pinimg.com/originals/4f/79/eb/4f79ebed3885684a71518ad1a53e82a8.jpg', 'UNAM'),
              getImage('https://media2.giphy.com/media/OazoCyXHeGyDm/giphy.gif', 'Gift Pokemon'),
              getImage('https://media0.giphy.com/media/ee4T7zvKeSIzC/source.gif', 'Gift Google'),
              getImage('https://tinder.com/static/tinder.png', 'Tinder'),
              getImage('https://i.pcmag.com/imagery/lineups/00Of2v2Xj4f51EK8oowHJMZ-1..v_1569492778.jpg', 'Facebook'),
              getImage('https://rbaduna.files.wordpress.com/2009/05/766819goyo-pumas.jpg', 'Mascota - Goyo'),
              getImage('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Logofca.jpg/1200px-Logofca.jpg', 'FCA'),
            ],
          )
      ),
    );
  }
}
Widget getImage(String url, String img){
  //Creando un método Widget de tipo Image para agregar imágenes con las mismas propiedades
  //contiene una barra de progreso de carga de la imagen

  return Padding(
    padding: EdgeInsets.all(5.0),
    child:
      Image.network(
        url,loadingBuilder: (context, child, progress){
        return progress == null ? child: LinearProgressIndicator();},
        semanticLabel: 'Imagen ' + img,
        fit: BoxFit.contain,
        color: Colors.cyan,
        colorBlendMode: BlendMode.darken,
      )
  );
}
