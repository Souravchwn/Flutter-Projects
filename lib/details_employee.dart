import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/employe_details.dart';

class DetailsEmply extends StatelessWidget {
  // final String? name;
  // final String? blood;
  // final String? phone;
  // final String? address;
  // final String? email;
  final List<EmployeeDetails> details;
  const DetailsEmply({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    for (var i in details) {
      print(i.name);
    }

    return Scaffold(
      body: ListView(children: [
        ...details
            .map((e) => ListTile(
                  title: Text("Empolyee details \n Name =${e.name}"),
                ))
            .toList(),
      ]),
      // body: ListView.builder(
      //   itemCount: details.length,
      //   itemBuilder: (context, index) => ListTile(
      //     title: Text(details[index].email!),
      //     subtitle: Text(details[index].name!),
      //   ),
      // ),
    );
  }
}
