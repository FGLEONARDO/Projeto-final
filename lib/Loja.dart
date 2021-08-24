import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/Sobre.dart';

class Loja extends StatefulWidget{
  @override
  State createState() => new LojaState();

}
class LojaState extends State<Loja>{
   Widget appBarTitle = new Text("Roupas Personalizadas");
    Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        backgroundColor:Colors.blue.shade900,
        centerTitle:true,
        title:appBarTitle,
        actions:<Widget>[
          new IconButton(icon: actionIcon,onPressed:(){
          setState(() {
                     if ( this.actionIcon.icon == Icons.search){
                      this.actionIcon = new Icon(Icons.close);
                      this.appBarTitle = new TextField(
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                        decoration: new InputDecoration(
                          prefixIcon: new Icon(Icons.search,color: Colors.white),
                          hintText: "Pesquise...",
                          hintStyle: new TextStyle(color: Colors.white)
                        ),
                      );}
                      else {
                        this.actionIcon = new Icon(Icons.search);
                        this.appBarTitle = new Text("Roupas Personalizadas");
                      }
                    });
        } ),]
      ),
    body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Esportes'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Animes'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Jogos'),
            ),
            ListTile(
              leading:Icon(Icons.group),
              title:Text('Filmes'),
            ),
            ListTile(
              leading:Icon(Icons.group),
              title:Text('Bandas'),
            ),
            ListTile(
              leading:Icon(Icons.group),
              title:Text('Animais'),
            ),
            ListTile(
              leading:Icon(Icons.group),
              title:Text('Mais Categorias'),
            ),
            Image.asset("img/fundo.png"),
            ElevatedButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade700,
                  elevation: 15,
                  shadowColor: Colors.green),
              child: Text(
                'Saiba Mais',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=> new Sobre())
                );
              },
            ),
          ],
        ),  
    );
  }
}

