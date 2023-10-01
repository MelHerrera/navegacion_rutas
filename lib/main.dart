import 'package:flutter/material.dart';
import 'package:navegacion_rutas/models/usuario.dart';
import 'package:navegacion_rutas/pages/SegundaPantalla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var mRoutes = {
    "/": (BuildContext context){ return new myHomePage(); } ,
    //"/segunda": (BuildContext context){ return mySegundaPantalla(usuario: Usuario("Mel", "Herrera")); }
    "/segundaSinParametros": (BuildContext context){ return mySegundaPantalla(); }
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: myHomePage(),
      initialRoute: "/",
      routes: mRoutes,
    );
  }
}

class myHomePage extends StatelessWidget {
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              MaterialButton(
                onPressed: ()=>{
                 Navigator.of(context).pushNamed("/segundaSinParametros", arguments: Usuario("Mel", "Herrera"))
                },
                color: Colors.lightBlueAccent,
                child: const Text("Ir a Segunda Pantalla"),
              )
            ],
          ),
        )
    );
  }
}