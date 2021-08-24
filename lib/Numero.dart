import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Numero extends StatefulWidget{
  @override
  State createState()=> NumeroState();
  
}
class NumeroState extends State<Numero>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue.shade900,
        
      ),
      backgroundColor:Colors.blue.shade900,
      body:Padding(
        padding:const EdgeInsets.all(10.0),
        child:Center(
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[
              TextField(
                autofocus:true,
                keyboardType:TextInputType.number,
                style: TextStyle(color: Colors.white, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"Telefone do usuário",
                  labelStyle: TextStyle(color: Colors.white),

                ),
              ),
              Divider(),
              TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.blue, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"Senha do usuário",
                  labelStyle: TextStyle(color: Colors.white),
                )
              ),
              Divider(),
               ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => { print("pressionei o botão"), },
                  shape: new RoundedRectangleBorder(borderRadius:
                  new BorderRadius.circular(30.0)),
                  child: Text(
                    "Enviar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ), //Text
                  color:Colors.orange.shade900,
                ),//RaisedButton
              ),//ButtonTheme
            ],
          ),
        )
        
      ),
    );
  }

}