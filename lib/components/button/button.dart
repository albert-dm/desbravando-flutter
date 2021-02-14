import 'package:first_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const secondaryColor = Color(0xFF4BBAB5);

class Button extends StatelessWidget {
  Button({@required this.onPressed, @required this.label, this.disabled = false});
  final GestureTapCallback onPressed;
  final String label;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(top: 50),
              child: RawMaterialButton(
                  onPressed: disabled ? null : this.onPressed,
                  child: Container(
                    decoration: BoxDecoration(
                      color: colors['secondaryColor'],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text(this.label,
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                  )),
            );
  }
}