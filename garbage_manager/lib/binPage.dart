import 'package:flutter/material.dart';
import 'package:garbage_manager/customWidgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
class BinPage extends StatefulWidget {
  const BinPage({Key? key}) : super(key: key);

  @override
  _BinPageState createState() => _BinPageState();
}

class _BinPageState extends State<BinPage> {
   bool halfcheckedValue=true;
   bool fullcheckedValue=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),

        child: ListView(
          children: [
            Text("ThankYou For Choosing E-Garbage System ",style: TextStyle(
          fontSize: 18,
            ),
           ),
            Text("Notify Us On Garbage Collection ",style: TextStyle(
              fontSize: 15,
            ),
            ),
            Column(
              children: [
                Text("Notify Us On Garbage Collection ",style: TextStyle(
                  fontSize: 15,
                ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Icon(Icons.delete_outline),
                ),
                Expanded(
                  child:CheckboxListTile(
                    title: Text("Fulll"),
                    value: fullcheckedValue,
                    onChanged: (newValue){
                      setState(() {
                        fullcheckedValue=newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  )
                )
              ],
            ),
            CustomWidgets().box(20),
            Row(
              children: [
                Expanded(
                  child: Icon(Icons.delete_outline),
                ),
                Expanded(
                    child:CheckboxListTile(
                      title: Text("Half Full"),
                      value: halfcheckedValue,
                      onChanged: (newValue){
                        setState(() {
                          halfcheckedValue=newValue!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    )
                )
              ],
            ),
            Column(
              children: [
                Text("Enter Street Name ",style: TextStyle(
                  fontSize: 15,
                ),
                ),
                TextField(
                ),
                Text("Enter Street ID ",style: TextStyle(
                  fontSize: 15,
                ),
                ),
                TextField(
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                    onPressed: (){
                      Get.snackbar("title", "Submit Succesfull ,,Response in 30 minutes",backgroundColor: Colors.green,colorText: Colors.white);
                    },
                child: Text("Submit"),
                  color: Colors.green,
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
