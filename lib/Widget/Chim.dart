import 'dart:async';

import 'package:flutter/material.dart';
dynamic chim(BuildContext context,double top,int i){
  return Positioned(
      bottom: top,
      left: 60,
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('assets/img/chim'+'${i}'+'.png'),
            fit: BoxFit.fill
          )
        ),
      )
  );
}