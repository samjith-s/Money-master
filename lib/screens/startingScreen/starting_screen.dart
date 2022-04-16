import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/user_db/user_db_fuctions.dart';
import 'package:money_manager/user_db/user_model.dart';
import '../homeScreen/common_scafforld_home.dart';
import '../splashScreen/app_splash_screen.dart';
import 'add_image_button.dart';
import 'starting_screen_widgets.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  GlobalKey<FormState> formKey3 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print('starting screen rebuilding');
    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
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
                      controller: nameController,
                      hint: 'Name',
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    StartScreenFormField(
                      controller: numberController,
                      hint: 'Mobile Number',
                      inputType: TextInputType.number,
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AddImageButton(),
                        StartButton(
                          onPressed: () async {
                            if (nameController.text == '' ||
                                numberController.text == '') {
                              return;
                            }
                            UserModel model = UserModel(
                              name: nameController.text,
                              mobile: numberController.text,
                              image:
                                  pickedImage == null ? '' : pickedImage!.path,
                            );
                            addUser(model);
                            var isloged = await Hive.openBox('login_check');
                            isloged.put(userCheckKey, true);
                            //await getUserDetials();
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (ctx) => const HomeScreen(),
                              ),
                              (route) => false,
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
