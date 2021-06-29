import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({Key key,this.color,this.hintText,this.obsecureText,this.onChanged,this.prefixIcon,this.text}) : super(key: key);
  final Color color;
  final String text;
  final bool obsecureText;
  final String hintText;
final Icon prefixIcon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: text,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            )
        ),
      ),
    );
  }
}

