import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/app_icons/app_icons.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String hint;
  final Rx<T?> value;
  final List<T> items;
  final String Function(T) getLabel;
  final Function(T?)? onChanged;
  final Color? dropdownColor;
  final Color? textColor;
  final double? fontSize;
  final bool isExpanded;

  const CustomDropdown({
    Key? key,
    required this.hint,
    required this.value,
    required this.items,
    required this.getLabel,
    this.onChanged,
    this.dropdownColor,
    this.textColor,
    this.fontSize,
    this.isExpanded = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButton<T>(
      underline: SizedBox(),
      hint: Text(
        hint,
        style: TextStyle(
          fontSize: fontSize ?? 14,
          color: textColor ?? Colors.white,
        ),
      ),
      style: TextStyle(
        fontSize: fontSize ?? 14,
        color: textColor ?? Colors.white,
      ),
      value: value.value,
      isExpanded: isExpanded,
      dropdownColor: dropdownColor ?? Colors.green,
      icon:SvgPicture.asset(
        AppIcons.dopdownicon,
        height: 20,
        width: 20,
        fit: BoxFit.scaleDown,
      ),
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(getLabel(item)),
        );
      }).toList(),
      onChanged: (T? newValue) {
        if (newValue != null) {
          value.value = newValue;
          onChanged?.call(newValue);
        }
      },
    ));
  }
}