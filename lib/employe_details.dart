import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmployeeDetails {
  final String? name;
  final String? address;
  final String? blood;
  final String? phone;
  final String? email;

  const EmployeeDetails(
      {this.name, this.address, this.blood, this.phone, this.email});
}


  final List<EmployeeDetails> details = [
    EmployeeDetails(
        email: "sourav@outlook.com",
        address: "Dhaka",
        blood: "B+",
        name: "Sourav",
        phone: "017xxxxxxxx")
  ];

