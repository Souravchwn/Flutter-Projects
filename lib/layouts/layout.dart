import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  Color? colorchange;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    var wid = width - (width / 5);
    var box_width = (wid - 200) / 3;
    var hei = height - ((height / 3));

    List<String> list = ["List 1", "List 2", "List 3", "List 4"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts"),
        leading: const IconButton(onPressed: null, icon: Icon(Icons.home)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: width / 5,
              color: Color.fromARGB(255, 111, 77, 75),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        ...list.map((e) => ListTile(title: Text("$e"))).toList()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: (height / 3),
                    width: wid - 60,
                    child: Row(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      colorchange = Colors.blue[200];
                                    });
                                  },
                                  child: container_widget("Container1",
                                      colorchange ?? Colors.red, box_width),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: container_widget(
                                    "Container2", Colors.black26, box_width),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: container_widget("Container 3",
                                      Colors.yellowAccent, box_width)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: hei,
                      width: wid - 60,
                      color: Colors.amberAccent,
                      child: Column(
                        children: [
                          Container(
                            height: 280,
                            width: wid - 30,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2, color: Colors.black))),
                            child: Text(
                              "Container4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              child: Text(
                            "Container5",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container container_widget(String? text, Color color, double width) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(width: 3),
            color: color,
            borderRadius: BorderRadius.circular(20)),
        height: 400,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
              ),
            )
          ],
        ));
  }
}
