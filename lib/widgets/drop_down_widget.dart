import 'package:flutter/material.dart';

import '../utils/constant.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  int? _value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 21,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
            isExpanded: true,
            hint: const Text(
              'Current Location',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            icon: Icon(
              Icons.expand_more,
              color: ORANGECOLOR,
            ),
            value: _value,
            items: const [
              DropdownMenuItem(
                child: Text('data1'),
                value: 0,
              ),
              DropdownMenuItem(
                child: Text('data2'),
                value: 1,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _value = value as int;
              });
            }),
      ),
    );
  }
}
