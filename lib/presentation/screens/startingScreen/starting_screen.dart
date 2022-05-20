import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/application/categories/categories_bloc.dart';
import 'package:money_manager/application/user_details/user_details_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../domain/categories/model/category_db_model.dart';
import '../../../domain/user/model/user_model.dart';
import '../homeScreen/common_scafforld_home.dart';
import '../profilePage/notification_functions.dart';
import '../splashScreen/app_splash_screen.dart';
import 'add_image_button.dart';
import 'starting_screen_widgets.dart';

TextEditingController nameController = TextEditingController();
TextEditingController numberController = TextEditingController();
GlobalKey<FormState> formKey3 = GlobalKey<FormState>();

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    addInitialCategories(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Form(
                key: formKey3,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const MoneyMasterName(),
                    const SizedBox(
                      height: 70,
                    ),
                    StartScreenFormField(
                      borderColor: appBlue,
                      controller: nameController,
                      hint: 'Name',
                      validator: (value) => value!.isEmpty
                          ? 'Enter the name'
                          : (RegExp(r'[^\d\W]').hasMatch(value))
                              ? null
                              : 'User name must contain only letters',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    StartScreenFormField(
                      borderColor: appBlue,
                      controller: numberController,
                      hint: 'Mobile Number',
                      inputType: TextInputType.number,
                      validator: (value) => value!.length != 10
                          ? 'Please enter a valid mobile number'
                          : (RegExp(r'\d').hasMatch(value))
                              ? null
                              : 'Enter a valid amount',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AddImageButton(
                          childText: 'Add a Image',
                          height: 50,
                        ),
                        StartButton(
                          onPressed: () async {
                            if (!formKey3.currentState!.validate()) {
                              return;
                            }
                            if (nameController.text.trim() == '' ||
                                numberController.text.trim() == '') {
                              return;
                            }
                            UserModel model = UserModel(
                              name: nameController.text,
                              mobile: numberController.text,
                              image: pickedImageNotifier.value == null
                                  ? ''
                                  : pickedImageNotifier.value!,
                            );
                            BlocProvider.of<UserDetailsBloc>(context)
                                .add(UserDetailsEvent.addUser(model: model));
                            var isloged = await Hive.openBox('login_check');
                            isloged.put(userCheckKey, true);
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (ctx) => HomeScreen(),
                              ),
                              (route) => false,
                            );
                            final SharedPreferences _pref =
                                await SharedPreferences.getInstance();
                            _pref.setBool('isNotificationOn', true);
                            sendNotification(
                              title: 'Hi ${nameController.text.trim()} 😍',
                              body:
                                  'Don\'t forget to Add Your today\'s transactions',
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> addInitialCategories(context) async {
  for (int i = 0; i < categories.length; i++) {
    CategoryModel model = CategoryModel(
      id: DateTime.now().millisecond,
      category: categories[i],
      type: i < 11 ? Categorytype.expense : Categorytype.income,
    );
    BlocProvider.of<CategoriesBloc>(context)
        .add(CategoriesEvent.addCategory(category: model));
  }
}

List categories = [
  'Food',
  'Travel',
  'Gadgets',
  'Shopping',
  'Entertainment',
  'Party',
  'Automobile',
  'Baby Care',
  'Health',
  'Education',
  'Others',
  'Salary',
  'Commission',
  'Grants',
  'Refund',
  'Investment',
  'Freelance',
  'Bonus',
  'Interst',
  'Lottery',
  'Others'
];
