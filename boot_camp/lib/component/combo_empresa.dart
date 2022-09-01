import 'package:flutter/material.dart';

class ComboEmpresa extends StatefulWidget {
  const ComboEmpresa({super.key});

  @override
  State<ComboEmpresa> createState() => _ComboEmpresaState();
}

class _ComboEmpresaState extends State<ComboEmpresa> {
  List<String> list = <String>['BPO CONSULTING', 'KAYNI', 'RAPPI - COL', 'WEBHELP'];
  

  @override
  Widget build(BuildContext context) {

    String dropdownValue = list.first;
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 16, 87, 92)),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}