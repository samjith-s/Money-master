import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';

class MoneyMasterName extends StatelessWidget {
  const MoneyMasterName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'MoneyZen',
      style: TextStyle(fontFamily: 'Acme', color: Colors.black, fontSize: 24.5),
    );
  }
}

class StartScreenFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validator;
  final Color? borderColor;
  final TextInputType inputType;
  final Color? hintColor;
  final Color? textColor;
  const StartScreenFormField({
    Key? key,
    required this.controller,
    required this.hint,
    this.borderColor,
    this.inputType = TextInputType.text,
    required this.validator,
    this.hintColor = const Color.fromARGB(255, 215, 214, 214),
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.sentences,
      validator: validator,
      keyboardType: inputType,
      controller: controller,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: hintColor,
          fontFamily: 'AnticSlab',
        ),
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
                color:
                    borderColor ?? const Color.fromARGB(255, 201, 200, 200))),
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
                color:
                    borderColor ?? const Color.fromARGB(255, 201, 200, 200))),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(
              color: borderColor ?? const Color.fromARGB(255, 201, 200, 200)),
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
          side: const BorderSide(color: appBlue),
          padding: const EdgeInsets.symmetric(horizontal: 25),
        ),
        onPressed: onPressed,
        child: const Text(
          'Start',
          style:
              TextStyle(fontSize: 18, fontFamily: 'AnticSlab', color: appBlue),
        ),
      ),
    );
  }
}
