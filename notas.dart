import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class notas extends StatefulWidget {
  const notas({Key? key}) : super(key: key);

  @override
  _notasState createState() => _notasState();
}

class _notasState extends State<notas> {
  TextEditingController _textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloco de notas"),
        backgroundColor: Colors.green,
      ),
      body: Column(
          children: <Widget>[
            Padding(
            padding: EdgeInsets.all(30),
             child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: "Escreva sua anotação:"),
               controller: _textEditingController,
             ),
            ),
            RaisedButton(
              child: Text("Add",style: TextStyle(
                color: Colors.white
              ),
              ),
              color: Colors.green,

                onPressed: () {},
          ),

            Padding(padding:EdgeInsets.all(20)),
            Icon(Icons.add_circle_outline),
            Padding(padding:EdgeInsets.all(20)),
            Icon(Icons.add_circle_outline),
            Padding(padding:EdgeInsets.all(20)),
            Icon(Icons.add_circle_outline),
            Padding(padding:EdgeInsets.all(20)),
            Icon(Icons.add_circle_outline),
            Padding(padding:EdgeInsets.all(20)),
            Icon(Icons.add_circle_outline),


          ],
        ),
      );
    }
}



