import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index=0;

  List quotes=[
    "“The purpose of our lives is to be happy.” — Dalai Lama",
    " “Life is what happens when you’re busy making other plans.” — John Lennon",
    "“Get busy living or get busy dying.” — Stephen King",
    " “You only live once, but if you do it right, once is enough.” — Mae West",
    "“If you want to live a happy life, tie it to a goal, not to people or things.”– Albert Einstein",
    "“Never let the fear of striking out keep you from playing the game.”– Babe Ruth",
    "“Not how long, but how well you have lived is the main thing.” — Seneca",
    "“In order to write about life first you must live it.”– Ernest Hemingway",
    " “The unexamined life is not worth living.” — Socrates",
    "“Turn your wounds into wisdom.” — Oprah Winfrey",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined),title:Text("First")),
    BottomNavigationBarItem(icon: Icon(Icons.add_call),title:Text("Second")),
    BottomNavigationBarItem(icon: Icon(Icons.android_sharp),title:Text("Third")),
      ]),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
                width: 450,
                margin: EdgeInsets.all(35),
                decoration: BoxDecoration(color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(15),),

                child: Center(child: Text(quotes[_index % quotes.length],
                  style: TextStyle(color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic,fontSize: 18,),

                ))),
            Divider(thickness: 1.4,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: FlatButton.icon(
                  onPressed: _ShowQuote,
                  color: Colors.teal.shade400,
                  icon: Icon(Icons.ac_unit_outlined),
                  label: Text("Click here",style: TextStyle(color: Colors.white,fontSize: 18,fontStyle: FontStyle.italic), )),
            )
          ],
        ),
      ),
    );
  }

  void _ShowQuote() {
   setState(() {
     _index +=1;
   });
  }
}
