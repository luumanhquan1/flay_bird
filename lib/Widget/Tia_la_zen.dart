import 'package:flutter/material.dart';
Positioned tilaze(BuildContext context,double width,double hopqua,double height,bool tialazen,bool kiemtra){
 return Positioned(
      top: width*0.5,
      right: hopqua,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(kiemtra?'assets/img/hopqua.jpg':'assets/img/boom.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),
            tialazen==true?Container(
                width: 100,
                height: height,
                color: Colors.red,
              ):Text('')
            ],
          )
        ],
      )
  );

}