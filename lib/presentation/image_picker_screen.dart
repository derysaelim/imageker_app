import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imageker_app/utils/utils.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Image Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _selectedImage != null
                ? CircleAvatar(
                    radius: 120,
                    backgroundImage: FileImage(_selectedImage!) as ImageProvider<Object>,
                    backgroundColor: Colors.transparent,
                  )
                : CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 120,
                    child: const Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.grey,
                    ),
                  ),

            const SizedBox(height: 30),

            MaterialButton(
              height: 40,
              minWidth: 160,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "Pilih Foto",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              onPressed: () {
                // requestPermission(permission: Platform.isAndroid ? Permission.storage : Permission.photos);
                _pickImageFromGallery();
              }),
          ],
        ),
      ),
    );
  }

  // Function untuk mengambil foto
  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
