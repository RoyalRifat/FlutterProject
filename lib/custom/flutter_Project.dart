import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class new_project extends StatelessWidget {
  const new_project({Key? key}) : super(key: key);

  _tapButton() {
    debugPrint("Tapped button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rifat's Information",
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () => debugPrint("Email Tapped!"),
              icon: Icon(Icons.email)),
          IconButton(onPressed: _tapButton, icon: Icon(Icons.access_alarm))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.add_ic_call), title: Text("First")),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_time), title: Text("Second")),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined), title: Text("Third")),
      ]),
      backgroundColor: Colors.grey.shade500,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()
            // InkWell( child: Text("MD. Rafi Uddin Bhuiyan",style: TextStyle(
            //   fontSize: 25,
            //   fontStyle: FontStyle.normal,
            //   color: Colors.white,
            // ),),
            //   onTap: ()=> debugPrint("tapped.."),
            //
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("Hello Foyez Vai..."),
          backgroundColor: Colors.red.shade700,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(25.0)),
        child: Text("Tap Button"),
      ),
    );
  }
}
