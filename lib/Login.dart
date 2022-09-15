import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final number = TextEditingController();
  String? text;
  String? result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Form(
              key: _form,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                          labelText: "Enter your name",
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Add some text";
                        }
                        return null;
                      },
                      // onFieldSubmitted: (newValue) {
                      //   setState(() {
                      //     newValue = text!;
                      //   });
                      // },
                    ),
                  ),
                  // Text(text!),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: TextFormField(
                      controller: number,
                      decoration: InputDecoration(
                          labelText: "Enter your name",
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Add some text";
                        }
                        return null;
                      },
                    ),
                  ),
                  Text("Result is $result"),
                  ElevatedButton(
                      onPressed: () {
                        int a = int.parse(_controller.text);
                        int b = int.parse(number.text);
                        result = (a + b).toString();

                        if (_form.currentState!.validate()) {
                          setState(() {
                            text = _controller.text;
                            print(text);
                          });
                        }
                      },
                      child: Text("Calculate"))
                ],
              )),
        ],
      ),
    );
  }
}
