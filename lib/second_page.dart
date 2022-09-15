import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/third_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
        backgroundColor: Color.fromARGB(255, 230, 151, 49),
        leading: const IconButton(
          icon: Icon(Icons.home),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
      ),
      body: Container(
<<<<<<< HEAD
        color: Colors.green,
=======
        color: Color.fromARGB(255, 43, 99, 45),
>>>>>>> ec558cee9795e27a83d03db4fe4e2e2508fe1d4d
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.cyan,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.lightGreenAccent,
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
            Text("Height $height", style: TextStyle(fontSize: 26)),
            Text("Width $width", style: TextStyle(fontSize: 26)),
            Text(
              "Another text",
              style: TextStyle(fontFamily: 'Raleway'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    width: 70,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.black,
                    width: 70,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Color.fromARGB(255, 33, 207, 181),
                    width: 70,
                    height: 50,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(80),
              child: SizedBox(
                height: 50,
                width: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      shadowColor: Colors.black,
                      elevation: 40),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ));

                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("This is a floting button"),
                      //shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20.0))),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Color.fromARGB(255, 133, 98, 95),
                    ));
                  },
                  child: const Text('Third page'),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50),
        color: Color(0xFFFF9000),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Floating button",
        elevation: 4,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
