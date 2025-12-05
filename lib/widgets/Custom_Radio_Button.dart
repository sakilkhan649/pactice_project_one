import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final String text;
  final bool value;
  final dynamic groupValue;
  final Function(dynamic) onCheng;

  CustomRadioButton({
    super.key,
    required this.text,
    required this.value,
    this.groupValue,
    required this.onCheng,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onCheng,
          side: BorderSide(width: 1, color: Colors.green),
          activeColor: Colors.green,

          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),

        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
