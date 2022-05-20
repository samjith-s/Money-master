import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../../../application/user_details/user_details_bloc.dart';
import '../../../../config/constant_colors.dart';
import '../../../../domain/user/model/user_model.dart';
import '../../homeScreen/home_page.dart';
import '../../startingScreen/add_image_button.dart';
import '../../startingScreen/starting_screen.dart';
import '../../startingScreen/starting_screen_widgets.dart';

Future<dynamic> userEditPopUP(BuildContext context, UserModel user) {
  return showDialog(
      context: context,
      builder: (BuildContext ctx) {
        nameController.text = user.name;
        numberController.text = user.mobile;
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StartScreenFormField(
                controller: nameController,
                hint: 'Name',
                validator: (value) {},
                borderColor: appBlue,
              ),
              SizedBox(height: height * .02659),
              StartScreenFormField(
                controller: numberController,
                hint: 'Mobile Number',
                inputType: TextInputType.number,
                validator: (value) {},
                borderColor: appBlue,
              ),
              SizedBox(height: height * .02659),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddImageButton(childText: 'Image', height: height * .05319),
                  SizedBox(
                    width: 20.w,
                    height: height * .05319,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        side: const BorderSide(
                          color: appBlue,
                        ),
                      ),
                      onPressed: () {
                        if (nameController.text.trim() == '' ||
                            numberController.text.trim() == '') {
                          return;
                        }
                        UserModel model = UserModel(
                          name: nameController.text,
                          mobile: numberController.text,
                          image: pickedImageNotifier.value == ''
                              ? ''
                              : pickedImageNotifier.value,
                        );
                        BlocProvider.of<UserDetailsBloc>(context)
                            .add(UserDetailsEvent.updateUser(newModel: model));
                        // addUser(model);
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(color: appBlue),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height * .02659),
            ],
          ),
        );
      });
}
