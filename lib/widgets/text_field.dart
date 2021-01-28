import 'package:flutter/material.dart';


class TextInputField extends StatelessWidget {
  const TextInputField({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          height: size.height * 0.08,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.grey[500].withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                hintText: hint,
              ),
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          )),
    );
  }
}
