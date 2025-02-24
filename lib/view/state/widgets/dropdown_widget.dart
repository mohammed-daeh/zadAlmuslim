import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownWidget extends StatelessWidget {
  final List<String> options;
  final RxString selectedValue;

  DropdownWidget({super.key, required this.options})
      : selectedValue = RxString(options.isNotEmpty ? options[0] : "choose");

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        alignment: Alignment.center,
        width: 90,
        height: 24,
        decoration: BoxDecoration(
          color: Color(0xffFFF2E5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedValue.value,
            items: options.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: selectedValue.value == item
                            ? Color(0xffF18C2C)
                            : Colors.black)),
              );
            }).toList(),
            onChanged: (newValue) {
              selectedValue.value = newValue!;
            },
          ),
        ),
      );
    });
  }
}
