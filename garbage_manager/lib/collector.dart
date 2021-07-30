import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binPage.dart';
import 'customWidgets.dart';

class Collector extends StatelessWidget {
  const Collector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collector Sign In"),
        backgroundColor: Colors.pink,
      ),
      body: Container(

        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              height: 200,
              child: Image.asset("assets/profile2.jpg"),
            ),
            CustomWidgets().fieldRow("Collector Name"),
            CustomWidgets().box(20),
            CustomWidgets().fieldRow("Password"),
            CustomWidgets().box(20),

            CustomWidgets().fieldRow("Location"),
            CustomWidgets().box(20),

            Container(
              margin: EdgeInsets.only(left: 50,right: 50),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: (){
                  Get.to(BinPage());
                },
                child: Text("Sign In"),
                textColor: Colors.white,
                color: Colors.pink,
              ),
            )
          ],
        ),
      ),
    );
  }
}
