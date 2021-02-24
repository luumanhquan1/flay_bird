import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
mixin check{
  double heightcot=0;
  bool gameover=false;
  double top=500;
  double time=0.5;
  double heght=0;
  double checkover=0;
  double cot1=-400;
  double khe=0;
  int diem=0;
  int diem1=0;
  bool tialazen=false;
  double hopqua=-100;
  double topdialog=-200;
  double bottondilog=800;
  bool kiemtrra=true;
  int i=1;

  void checkgameover(double width,double height){

    if(cot1>=width*0.513&&cot1<=width*0.87){
      checkover=1;
    }
    else
    {
      checkover=0;
    }
    if(checkover==1){
      if(khe!=0){
        if( top>heightcot&&top<heightcot+khe){
          if(cot1<=width-61&&cot1>=width-66){
            diem++;
          }
        }
        else{
         gameover=true;
        }
      }
    }
  }
  Random rmg=new Random();
  Widget chuyenDong(double width,double height){

if(diem==3){
   hopqua=hopqua+4;
}
if(gameover==false) {
  cot1 = cot1 + 5;
}
    heght+=time;
    top=top-heght;
    if(top<=0){
      top=0;
    }
    if(cot1>width+50){
      heightcot=rmg.nextInt((height.toInt())-350).toDouble()+50;
      khe=width*0.47;
         if(diem==1){
           heightcot=height/2-600/2;
           khe=600;
         }
      cot1=-90;
         if(diem==3){
           cot1=-450;
         }

    }
    if(checkover==1&&diem==1&&cot1<width*0.6){
        heightcot=height/2-275;
      khe=width*0.47;
    }

    if(diem==3){
       if(hopqua>=200&&hopqua<250){
         if(top>(height-(height*0.2+175))&&top<(height-(height*0.2+50))){
     // boom....
           kiemtrra=false;
          gameover=true;

        }
        if(top<(height-(height*0.2+175))&&kiemtrra==true){
       gameover=true;
          tialazen=true;
         }
      }
       Future.delayed(Duration(seconds: 2),(){
         tialazen=false;
       });
    }
  }
}
