import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/Loja.dart';
import 'package:projeto_final/Numero.dart';
import 'package:projeto_final/Sobre.dart';

class Home extends StatefulWidget{
  @override
  State  createState() => new HomeState();    

}
class HomeState extends State<Home>{
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
               } 
              ),
            ]
          ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("img/fundo.png"),
            new SizedBox(height: 25), // Espaçamento

            new Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  // Título
                  

                  new SizedBox(height: 45), // Espaçamento
                  // Botão Buscar Contatos
                  new Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Icon(
                                Icons.group,
                                color: Colors.white,
                                size: 24
                              ),
                              new Text(
                                "Categorias",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24
                                )
                              ),
                            ],
                          )
                        ),
                        
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new Loja())
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange.shade900
                        )
                      );
                    }
                  ),
                  SizedBox(height: 15),
                  new Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Icon(
                                Icons.group,
                                color: Colors.white,
                                size: 24
                              ),
                              new Text(
                                "Deixe seu Número",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24
                                )
                              ),
                            ],
                          )
                        ),
                        
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new Numero())
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange.shade900
                        )
                      );
                    }
                  ),
                  SizedBox(height: 15)      
                ]    
              )
            ),
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
                   MaterialPageRoute(builder: (context) => new Sobre())
                );
              },
            ),
          ]
        )
      )
        );
      }
    }

class FontAwesomeIcons {
  static IconData? search;
}