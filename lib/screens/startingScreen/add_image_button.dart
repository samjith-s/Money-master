import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:money_manager/config/constant_colors.dart';

XFile? pickedImage;

class AddImageButton extends StatelessWidget {
  const AddImageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton.icon(
        onPressed: () {
          showCameraSelectionDialog(context);
        },
        icon: const Icon(
          Icons.camera_alt_outlined,
          color: appBlue,
        ),
        label: const Text(
          'Add a Image',
          style: TextStyle(fontSize: 18, fontFamily: 'Roboto', color: appBlue),
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showCameraSelectionDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          //backgroundColor: appBlue,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton.icon(
                onPressed: () async {
                  XFile? _pickedImage =
                      await ImagePicker().pickImage(source: ImageSource.camera);
                  if (_pickedImage != null) {
                    pickedImage = _pickedImage;
                  }
                },
                icon: const Icon(Icons.camera_alt_outlined, color: appBlue),
                label: const Text(
                  'Camera',
                  style: TextStyle(color: appBlue),
                ),
              ),
              SizedBox(
                width: 114,
                child: OutlinedButton.icon(
                  onPressed: () async {
                    XFile? _pickedImage = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (_pickedImage != null) {
                      pickedImage = _pickedImage;
                    }
                  },
                  icon: const Icon(Icons.photo_outlined, color: appBlue),
                  label: const Text(
                    'Gallery',
                    style: TextStyle(color: appBlue),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
