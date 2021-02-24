import 'package:flutter/material.dart';
Stack cot(BuildContext context,double heightcot,double height,double khe,double cot1){
 return Stack(
    children: [
      Positioned(
        bottom: 0,
        right: cot1,
        child: Container(
          width: 90,
          height: heightcot,
          decoration: BoxDecoration(
              color: Colors.blue,
            image: DecorationImage(
              image: AssetImage('assets/img/cot.jpg'),
              fit: BoxFit.fitWidth
            )
          ),
        ),
      ),
      Positioned(
        top: 0,
        right: cot1,
        child: Container(
          width: 90,
          height: heightcot==0?0:height-heightcot-khe,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/img/cot.jpg'),
                  fit: BoxFit.fitWidth
              )
          ),
        ),
      ),
    ],
  );
}