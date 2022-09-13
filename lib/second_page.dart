import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
        color: Colors.green,
        height: height / 2,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  onPressed: () {},
                  child: const Text('Enabled'),
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
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
