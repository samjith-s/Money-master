import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/categories/categories_bloc.dart';
import '../../../../config/constant_colors.dart';

class PeymentModeButton extends StatelessWidget {
  final String child;
  final void Function()? onPressed;
  final String button;
  const PeymentModeButton({
    Key? key,
    required this.child,
    required this.button,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: onPressed,
          child: Text(
            child,
            style: const TextStyle(
              fontFamily: 'AnticSlab',
            ),
          ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: state.selectedPeymentButton == button
                ? MaterialStateProperty.all(appBlue)
                : MaterialStateProperty.all(
                    const Color.fromARGB(255, 108, 108, 108),
                  ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
