import 'package:flutter/material.dart';
import 'package:garbage_manager/collector.dart';
import 'package:garbage_manager/customWidgets.dart';
import 'package:garbage_manager/userSignIn.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: ListView(
          children: [
            Container(

              padding: EdgeInsets.all(20),
              height: 200,
              child: Center(
                child: Text("Welcome to smart Garbage Collection App",style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),
            Column(
              children: [
                Text("How would You Like To Continue?",style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                ),)
              ],
            ),
            CustomWidgets().box(40),
            Row(
              children: [
                Expanded(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: (){
                      Get.to(UserSignIn());
                    },
                    child: Text("Customer"),
                    color: Colors.green,
                    textColor: Colors.white,
                  ),
                ),
                Expanded(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: (){
                      Get.to(Collector());
                    },
                    child: Text("Collector"),
                    color: Colors.pink,
                    textColor: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
