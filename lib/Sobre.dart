import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/Detalhes.dart';

class Sobre extends StatefulWidget{
  @override
  State createState()=>new SobreState();
}
class SobreState extends State<Sobre>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.blue.shade900,
        title:Text("Sobre"),
      ),
      backgroundColor:Colors.grey.shade900,
    body: new SingleChildScrollView(
        child: new Detalhes()
      ),
    );
  }
}
