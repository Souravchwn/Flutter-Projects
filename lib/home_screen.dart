import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screens/Login/components/login_screen_top_image.dart';
import 'package:flutter_application_1/Screens/Welcome/components/login_signup_btn.dart';
import 'package:flutter_application_1/details_employee.dart';
import 'package:flutter_application_1/employe_details.dart';

class HomeScreen extends StatefulWidget {
  final String? email;
  final String? password;

  const HomeScreen({super.key, required this.email, this.password});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _nameController = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _bloodcrrl = TextEditingController();
  final _phonectrl = TextEditingController();
  final _addresscnrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ${widget.email}"),
            Text("Your passowrd is ${widget.password}"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Full name",
                    prefixIcon: Icon(Icons.person),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _addresscnrl,
                decoration: InputDecoration(
                    labelText: "Address",
                    prefixIcon: Icon(
                      Icons.location_city,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _phonectrl,
                decoration: InputDecoration(
                    labelText: "Phone number", prefixIcon: Icon(Icons.numbers)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _bloodcrrl,
                decoration: InputDecoration(
                    labelText: "Blood Group", prefixIcon: Icon(Icons.numbers)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                    labelText: "Email", prefixIcon: Icon(Icons.numbers)),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    details.add(EmployeeDetails(
                        address: _addresscnrl.text,
                        blood: _bloodcrrl.text,
                        email: _emailcontroller.text,
                        name: _nameController.text,
                        phone: _phonectrl.text));
                  });
                },
                child: Text("Add informations")),
            Expanded(
              child: ListView.builder(
                itemCount: details.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    details.removeAt(index);
                  },
                  leading: Icon(Icons.delete),
                  title: Text(details[index].email!),
                  subtitle: Text(details[index].name!),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsEmply(details: details),
                      ));
                },
                child: Text("Next page"))
          ],
        ),
      ),
    );
  }
}
