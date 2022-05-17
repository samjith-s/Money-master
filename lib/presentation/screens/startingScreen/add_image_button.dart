import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:money_manager/config/constant_colors.dart';

// XFile? pickedImage;
ValueNotifier pickedImageNotifier = ValueNotifier('');

class AddImageButton extends StatelessWidget {
  final double height;
  final String childText;
  const AddImageButton({
    Key? key,
    required this.height,
    required this.childText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: OutlinedButton.icon(
        onPressed: () {
          showCameraSelectionDialog(
            context: context,
          );
        },
        icon: const Icon(
          Icons.camera_alt_outlined,
          color: appBlue,
        ),
        label: Text(
          childText,
          style: const TextStyle(
              fontSize: 18, fontFamily: 'AnticSlab', color: appBlue),
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          side: const BorderSide(
            color: appBlue,
          ),
        ),
      ),
    );
  }

  Future<dynamic> showCameraSelectionDialog({required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (ctx) {
        return ValueListenableBuilder(
          valueListenable: pickedImageNotifier,
          builder: (BuildContext c, dynamic image, Widget? _) {
            return AlertDialog(
              //backgroundColor: appBlue,
              insetPadding: const EdgeInsets.all(0),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      XFile? _pickedImage = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      if (_pickedImage != null) {
                        pickedImageNotifier.value = _pickedImage.path;
                        pickedImageNotifier.notifyListeners();
                      }
                    },
                    icon: const Icon(Icons.camera_alt_outlined, color: appBlue),
                    label: const Text(
                      'Take a Photo',
                      style: TextStyle(
                          color: appBlue,
                          fontFamily: 'AnticSlab',
                          fontSize: 16),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      XFile? _pickedImage = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (_pickedImage != null) {
                        pickedImageNotifier.value = _pickedImage.path;
                        pickedImageNotifier.notifyListeners();
                      }
                    },
                    icon: const Icon(Icons.photo_outlined, color: appBlue),
                    label: const Text(
                      'Choose from gallery',
                      style: TextStyle(
                          color: appBlue,
                          fontFamily: 'AnticSlab',
                          fontSize: 16),
                    ),
                  ),
                  pickedImageNotifier.value != ''
                      ? SizedBox(
                          width: 114,
                          height: 114,
                          child: Image(
                            image: FileImage(File(image)),
                            fit: BoxFit.cover,
                          ),
                        )
                      : const SizedBox(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          pickedImageNotifier.value = '';
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'cancel',
                          style: TextStyle(
                            color: appBlue,
                            fontFamily: 'AnticSlab',
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          side: const BorderSide(
                            color: appBlue,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'save',
                          style: TextStyle(
                            color: appBlue,
                            fontFamily: 'AnticSlab',
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          side: const BorderSide(
                            color: appBlue,
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
