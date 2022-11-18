import 'package:flutter/material.dart';
import 'Pages.dart';

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
                        "قرآن الکریم",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: "arabic"
                        ),
                      ),
                    ),
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
                        shape: StadiumBorder(),
                        primary: Color(0xFFb3b4ae),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 90),
                      ),
                      child: Text(
                        "ترجمه ",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
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
                        shape: StadiumBorder(),
                        primary: Color(0xFFb3b4ae),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 95),
                      ),
                      child: Text(
                        "تلاوت",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(
                          "images/q1.JPG",
                        ),
                      ),
                    ),
                    Container(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(90, 165, 10, 0),
                          child: Text(
                            'اِنَّاٌ أَنزَلْنَهُ فِی لَیلَةِ اٌلْقَدْر',
                            style: TextStyle(
                              color: Color(0xFFb3b4ae),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
