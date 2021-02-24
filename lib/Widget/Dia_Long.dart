import 'package:flutter/material.dart';
dynamic dialog(BuildContext context,double width,double top){
  return AnimatedPositioned(
  top: top,
left: width*0.05,
    duration: Duration(milliseconds: 500),
    child: AlertDialog(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: Container(
    height:100,
    width:200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/gameover.png')
        )
      ),
 ),
    ),
  );
}
dynamic bangthanhtich(BuildContext context,double width,double top,double height,int diem){
  return AnimatedPositioned(
    top: top,
    left: width*0.001,
    right: width*0.01,
    duration: Duration(milliseconds: 500),
    child: AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        height:height*0.18,
        width:300,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(7)),
        border: Border.all(width: 5,color: Colors.red)
      ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 25,
                  ),
                  Text("Score",style: TextStyle(fontSize: width*0.07,color: Colors.white),),
                  Text("$diem",style: TextStyle(fontSize:  width*0.07,color: Colors.white),),
                ],
              ),
              Container(width: 20,),
              Container(
                width: width*0.26,
                height: width*0.26,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/cup.jpg'),
                    fit: BoxFit.fill
                  )
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
