import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'dart:math';





void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.amber[300],
          title: Text('Aspire To Inspire Before We Expire',
            style: TextStyle(color: Colors.black),),

        ),

        body: Interface(),
      ),
    ),
  );
}


class Interface extends StatefulWidget {


  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {

  int picNumber = 1;
  int noteNumber = 1;
  void addImage(){
    setState(() {
      picNumber = Random().nextInt(19) + 1;

    });
  }

  void addTunes(){
    setState(() {
      final player = AudioCache();
      player.play('note$noteNumber.wav');
      noteNumber = Random().nextInt(6) + 1;

    });

  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: FlatButton(onPressed: (){
          addImage();
          addTunes();


          print('Click Me');
        },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/pic$picNumber.jpeg'),
                  fit: BoxFit.cover
              ),
            ),
          ),


        ))

      ],
    );
  }
}
