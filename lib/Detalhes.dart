import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Container(
                padding: EdgeInsets.all(20),
                child: new Text(
                  "Este Aplicativo, foi feito para vender roupas customizadas, com intuito de atrair um grande público, graças a variedades de opções em que o usúario pode se identificar.",
                  style: new TextStyle(
                    fontSize: 18,
                    color:Colors.white,
                  )
                )
              ),
      ],
    );
  }

}