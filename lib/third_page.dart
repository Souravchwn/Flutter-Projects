import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/second_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Color"),
        
      ),
      body: Column(
        children: [
          Container(
            height: height / 2,
            width: width,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: width,
                    height: 10,
                    color: Colors.red,
                    child: Center(child: textWidget(title: "Red")),
                  ),
                ),
                Expanded(
                  child: Container(
                    // height: 50,
                    // width: width,
                    color: Colors.blue,
                    child: Center(child: textWidget(title: "Blue")),
                  ),
                ),
                Expanded(
                  child: Container(
                    // height: 50,
                    // width: width,
                    color: Colors.green,
                    child: Center(child: textWidget(title: "Green")),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Center(
                              child: textWidget(
                                  title: "Black", color: Colors.white)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.lightBlue,
                          child: Center(child: textWidget(title: "LightBlue")),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          child: Center(
                              child: textWidget(
                                  title: "Sourav", color: Colors.amber)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.cyanAccent,
                          child: Center(child: textWidget(title: "Cyan")),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              child: Text("Click here"),
            ),
          )
        ],
      ),
    );
  }

  Text textWidget({required String title, Color? color}) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: color),
    );
  }
}
