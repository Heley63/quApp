import 'package:flutter/material.dart';
import 'package:practice/Pages.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "قرآن کریم",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        )),
                  ),
                  Expanded(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage("images/q2.jpg"),
                        maxRadius: 100,
                      ),

                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                   Container(
                      margin: EdgeInsets.all(25),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Pages(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF2CA69),
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 70),
                        ),
                        child: Text(
                          "ترجمه قرآن",
                          style: TextStyle(
                            fontSize: 25,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ), Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Pages(),

                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF2CA69),
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 70),
                        ),
                        child: Text(
                          "تلاوت قرآن",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black
                          ),
                        ),
                      ),
                    ),

                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Image(
                  image: AssetImage(
                    "images/q1.JPG",
                   
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

