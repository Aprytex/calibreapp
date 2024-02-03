// Remove the unused import directive
// import 'package:calibreapp/Content.dart';
import 'package:flutter/material.dart';

import 'Content.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 200),
            child: Image.asset('assets/Grupo_104.png'),
          ),
          Expanded(
            child: Container(
              width: double.infinity, // This will make the container take all available width
              decoration: const BoxDecoration(
                color: Color(0xFFF93822),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Orgullosamente',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Mineros',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle sign in button press
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          minimumSize: Size(350, 50),
                        ),
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle sign up button press
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF002C5D),
                          minimumSize: Size(350, 50),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white) ,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle continue without registration button press
                          //go to content page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ContentPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 177, 177, 177),
                          onPrimary: const Color.fromARGB(255, 255, 255, 255),
                          minimumSize: Size(350, 50),
                        ),
                        child: Text(
                          'Continuar sin registro',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}