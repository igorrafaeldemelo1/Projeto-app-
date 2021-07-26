import 'package:projeto01/compromissos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto01/Contas.dart';
import 'package:projeto01/notas.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {




  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Agenda Publica"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
        //padding: EdgeInsets.all(16),

        child:Column(


          children: <Widget>[

          ColoredBox(color: Colors.indigoAccent),
            Text(
              "Bem vindo a sua agenda publica!",
              style: TextStyle(
                
                fontSize: 20,
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            Image.asset("img/logo.gif",
            ),
              Padding(padding:EdgeInsets.all(15)),
              RaisedButton.icon(
                color: Colors.indigoAccent,
                onPressed: (){
                  Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder:(BuildContext context)=> notas()));
                },
                icon: Icon(Icons.assignment_outlined),
                label: Text("Notas",style: TextStyle(color: Colors.white),),
              ),
              Padding(padding:EdgeInsets.all(15)),
              RaisedButton.icon(
                color: Colors.indigoAccent,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(BuildContext context)=> contas()));
                  },
                icon: Icon(Icons.account_balance_wallet_rounded),
                label: Text("Contas",style: TextStyle(color: Colors.white),),),
              Padding(padding:EdgeInsets.all(15)),
              RaisedButton.icon(
                color: Colors.indigoAccent,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(BuildContext context)=> compromissos()));
                  },
                icon: Icon(Icons.speaker_notes_rounded),
                label: Text("Compromissos",style: TextStyle(color: Colors.white),),),


            ],

        ),



      ),
    );
  }

}
