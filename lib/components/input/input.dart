import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  Input({@required this.type, @required this.onChanged, @required this.label} );
  // onChange function
  final Function(String) onChanged;
  // type should be enum
  final String type;
  final String label;

  @override 
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                obscureText: this.type == 'password',
                onChanged: onChanged,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: label,
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            );
  }
}