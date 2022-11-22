import 'dart:ui';

import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  

  @override
  build(context) {
  final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5,0.5],
          colors: [
          Colors.white,
          Colors.white,
        ]),
      );
    return Scaffold(
      backgroundColor: Colors.white,
    body: Container(
      decoration: boxDecoration,
      child: PageView(
        physics: BouncingScrollPhysics(),
       scrollDirection: Axis.vertical,
        children: [
         Page1(),
          Page2(),
           ],
        ),
    ),
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background Image
        Background(),
        MainContent()
      ],
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/fondo.jpg'),));
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.green);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Expanded(child: Container()),
         
          Container(
          color: Colors.white,
          child: Center(
          child: TextButton(
          onPressed: (){}, 
          child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 34, fontFamily: 'EduFont'),),
         ),
          style: TextButton.styleFrom(
          backgroundColor: Color(0xFF351408),
          shape: StadiumBorder(),),), 
          ),
          ),
           Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.black),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   var textStyle = TextStyle(fontSize: 33, fontFamily: 'EduFont',);
 return MaterialApp(
       title: "Actividad Asíncrona",
       debugShowCheckedModeBanner: false,
       home: Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
       title: const Center(
         child: Text(
              "Platillos",
         style: TextStyle(fontSize: 31, fontFamily: 'EduFont', fontWeight: FontWeight.bold),
            ),
          ),
         centerTitle: true,
         backgroundColor: const Color(0xFF351408),
         elevation: 5,
        ),
        body:
            Center(
              child: Column(
                children: [
                  Text('Arroz con Pollo', style: textStyle,),
                  Container(
                    padding: const EdgeInsets.symmetric(
                    vertical: 3.0,
                    horizontal: 3.0,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                    color: Color(0xFF351408),
                    width: 8, ),
                     borderRadius: BorderRadius.circular(16),
                    ),
                    
                    child: Image.asset('assets/plato1.jpg'),
                  ),
                  Text('Ceviche', style: textStyle,),
                  Container(
                      padding: const EdgeInsets.symmetric(
                      vertical: 3.0,
                      horizontal: 3.0,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                      color: Color(0xFF351408),
                      width: 8, ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    
                    child: Image.asset('assets/plato2.jpg'),
                  ),
                ],
              ),
            ),
          
        
      ),
    );
 }
}











