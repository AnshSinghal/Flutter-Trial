// import "package:flutter/material.dart";


// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   MyApp({super.key}); //constructor of MyApp class
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, //MaterialApp is a widget that provides a number of helpful widgets for building material design apps
//       home: Scaffold(//Scaffold is a widget that provides a framework for implementing material design layout
//         appBar: AppBar(//AppBar is a widget that displays a toolbar at the top of the app
//           backgroundColor: Color.fromARGB(255, 191, 9, 237), //Color.fromARGB is used to set the color of the appbar
//           title: Text("AI_Chatbot"),
//         ),
//         body: Center(//body is a widget that holds the main content of the app and Center is a widget that aligns its child to the center of the screen
//           child: Text("Hello World"),//child is a widget that holds the content of the body
//         ),
//       ),
//     );
//   }

// }

import 'package:ai_chatbot/screens/landing.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async{//async is used to make the function asynchronous which means that the function will not run in the order it is written
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landingPage()
      );
  }
}
