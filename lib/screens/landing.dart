import "package:ai_chatbot/screens/loginPage.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";//importing material.dart file from flutter package


class landingPage extends StatefulWidget {//creating a class named landingPage which is a stateful widget
  const landingPage({super.key});//constructor of landingPage class

  @override//override is used to override the properties of the parent class
  State<landingPage> createState() => _landingPageState();//createState is a method that creates the state for the widget
}

class _landingPageState extends State<landingPage> {//creating a class named _landingPageState which is a state of landingPage class
  @override//override is used to override the properties of the parent class
  Widget build(BuildContext context) {//build is a method that creates the UI of the widget and buildcontext is a handle to the location of a widget in the widget tree it is necessary because it helps in locating the position of the widget
    // return Container();//Container is a widget that allows you to customize its child widget
    double screenheight = MediaQuery.of(context).size.height;//MediaQuery is a widget that provides information about the current media, such as the size of the current screen
    double screenwidth = MediaQuery.of(context).size.width;//MediaQuery is a widget that provides information about the current media, such as the size of the current screen
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 9, 57),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                "Alphabet.inc",
                style:GoogleFonts.sourceCodePro(
                  fontSize: screenwidth * 0.13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ), Container(
                height: screenheight * 0.01,
              ),//Container is a widget that allows you to customize its child widget
              Text(
                "Buy and Sell Comics Online",
                style:GoogleFonts.sourceCodePro(
                  fontSize: screenwidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                height: screenheight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenwidth * 0.4,
                    height: screenheight * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),)
                    );},
                      child: Text(
                        "Login",
                        style: GoogleFonts.sourceCodePro(
                          fontSize: screenwidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 191, 9, 237),
                      ),
                    ),
                    

                  ),
                  Container(
                    width: screenwidth * 0.1,
                  ),
                  Container(
                    width: screenwidth * 0.4,
                    height: screenheight * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.sourceCodePro(
                          fontSize: screenwidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 191, 9, 237),
                      ),
                    ),
                    

                  ),
                ],
              ),
              
            
            ],
          ),
        ),
      ),
    );//Scaffold is a widget that provides a framework for implementing material design layout and Column is a widget that displays its children in a vertical array and the body columns are the primary way to display children in a vertical array
  }
}