import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacion_rutas/models/usuario.dart';

class mySegundaPantalla extends StatelessWidget {
 const  mySegundaPantalla({super.key});


  @override
  Widget build(BuildContext context) {
    var usuario = ModalRoute.of(context)?.settings.arguments as Usuario;

    return Scaffold(
      appBar: AppBar(
          title:const Text("Segunda Pantalla")
      ),
      body: Column(
        children: [
          Text("Hola ${usuario.nombre} ${usuario.apellido}"),
          ElevatedButton(
            onPressed: ()=>{ 
              Navigator.pop(context)
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home),
                Text("Devolver")
              ],
            ),
          )
        ],
      ),
    );
  }
}
