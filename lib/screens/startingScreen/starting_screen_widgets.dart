import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';

class MoneyMasterName extends StatelessWidget {
  const MoneyMasterName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Money Master',
      style: TextStyle(
          fontFamily: 'NovaFlat', color: Colors.black, fontSize: 24.5),
    );
  }
}

class StartScreenFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validator;
  final Color? borderColor;
  final TextInputType inputType;
  const StartScreenFormField({
    Key? key,
    required this.controller,
    required this.hint,
    this.borderColor,
    this.inputType = TextInputType.text,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("textfield page rebuild");
    return TextFormField(
      validator: validator,
      keyboardType: inputType,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 201, 200, 200)),
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
                color: borderColor ?? Color.fromARGB(255, 201, 200, 200))),
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
                color: borderColor ?? Color.fromARGB(255, 201, 200, 200))),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(color: appBlue),
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  final void Function()? onPressed;
  const StartButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25),
        ),
        onPressed: onPressed,
        child: const Text(
          'Start',
          style: TextStyle(fontSize: 18, fontFamily: 'Roboto', color: appBlue),
        ),
      ),
    );
  }
}
