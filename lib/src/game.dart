
import 'dart:async';

import 'package:UIShoppe/Logic/check_Game_over.dart';
import 'package:UIShoppe/Widget/Chim.dart';
import 'package:UIShoppe/Widget/Cot.dart';
import 'package:UIShoppe/Widget/Dia_Long.dart';
import 'package:UIShoppe/Widget/Tia_la_zen.dart';
import 'package:flutter/material.dart';
class Myappstf extends StatefulWidget {
  @override
  _MyappstfState createState() => _MyappstfState();
}

class _MyappstfState extends State<Myappstf> with check {
  bool startgame=false;
  Timer _timer;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

if(startgame){
  _timer=Timer(Duration(milliseconds: 1), (){
    chuyenDong(width, height);
    checkgameover(width,height);
    if(top==0){
      top=0;
topdialog=height*0.27;
bottondilog=topdialog+100;
      gameover=true;
      setState(() {
      });
    }
    setState(() {
    });
  }

  );
}

    return GestureDetector(
      onTap: (){
        startgame=true;

        if(gameover==false) {
          heght = -11;
        }
        setState(() {
        });
      },
      child: Scaffold(

        body: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/anhnen.jpg'),
                  fit: BoxFit.fill
                )
              ),
            ),
            cot(context, heightcot, height, khe, cot1),
            chim(context, top,i),
            tilaze(context, width, hopqua, height,tialazen,kiemtrra),
          dialog(context,width,topdialog),
            bangthanhtich(context, width, bottondilog,height,diem),

          AnimatedPositioned(
            top: bottondilog+195,
            left: width*0.05,
            duration: Duration(seconds: 2),
            child: GestureDetector(
              onTap: (){
                 heightcot=0;
                 gameover=false;
                 top=500;
                 time=0.5;
                 heght=0;
                 checkover=0;
                cot1=-400;
                 khe=0;
                 diem=0;
                 tialazen=false;
                 hopqua=-100;
                 topdialog=-200;
                bottondilog=800;
                startgame=false;
                kiemtrra=true;
              },
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                backgroundColor: Colors.transparent,
                elevation: 0,
                content: Container(
                  height:height*0.07,
                  width:70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      border: Border.all(width: 5,color: Colors.red),
                      color: Colors.green
                  ),
          child: Icon(Icons.wifi_protected_setup,color: Colors.white,),
                ),
              ),
            ),
          ),
            Positioned(
                right:width*0.5,
                top: height*0.2,
                child: Text(gameover==true?'$i':'$i',style: TextStyle(fontSize: width*0.1,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
