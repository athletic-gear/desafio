import 'package:flutter/material.dart';
//utils
import '../../shared/utils/app_color.dart';

// ignore: must_be_immutable
class CheckValidator extends StatelessWidget {
  CheckValidator({Key? key, required this.text, required this.status})
      : super(key: key);
  final String text;
  bool status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(
            milliseconds: 500,
          ),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: status ? AppColor.instance.verde : Colors.transparent,
              border: Border.all(color: AppColor.instance.grey),
              borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Icon(
              Icons.check,
              color: AppColor.instance.white,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    );
  }
}
