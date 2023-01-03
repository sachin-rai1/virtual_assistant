import 'package:flutter/material.dart';
import 'package:virtual_assistant/app/data/Constants.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.onTap,
      required this.label,
      this.circularInt,
      this.height,
      this.width,
      this.color,
      this.iconData,
      this.textAlign,
      this.fontColor})
      : super(key: key);

  final VoidCallback? onTap;
  final String label;
  final double? circularInt;
  final double? height;
  final double? width;
  final Color? color;
  final IconData? iconData;

  final TextAlign? textAlign;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: (circularInt == null)
              ? BorderRadius.circular(0)
              : BorderRadius.circular(circularInt!),
          color: (color == null) ? primaryColor : color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              textAlign: textAlign,
              style: TextStyle(color: fontColor),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      this.widget,
      this.hint,
      this.label,
      this.onTap,
      this.controller,
      this.readOnly,
      this.hintstyle,
      this.keyBoardType,
      this.focusNode,
      this.borderRadius,
      required this.obSecure,
      this.height,
      this.width})
      : super(key: key);

  final Widget? widget;
  final Function()? onTap;
  final String? hint;
  final String? label;
  final TextEditingController? controller;
  final bool? readOnly;
  final bool obSecure;
  final TextStyle? hintstyle;
  final TextInputType? keyBoardType;
  final FocusNode? focusNode;
  final double? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (label == null) ? const Text("") : Text(label!),
            SizedBox(
              height: (label == null) ? 0 : 5,
            ),
            SizedBox(
              height: height,
              width: width,
              child: Material(
                elevation: 5,
                shadowColor: Colors.white,
                color: Colors.white,
                child: TextFormField(
                  focusNode: focusNode,
                  keyboardType: keyBoardType,
                  controller: controller,
                  onTap: onTap,
                  readOnly: readOnly ?? false,
                  obscureText: obSecure,
                  decoration: InputDecoration(
                      suffixIcon: widget,
                      contentPadding: const EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(borderRadius!),
                      ),
                      hintText: hint,
                      hintStyle: hintstyle),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ));
  }
}
