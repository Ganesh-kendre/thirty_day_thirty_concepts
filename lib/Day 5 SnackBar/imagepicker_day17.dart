import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _imagePicker =ImagePicker();
  XFile?file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
           Container(
             height: 250,
             width: 250,
             color: Colors.grey,
             child: Center(child: file==null?Text('Image not yet picked'):
                 Image.file(File(file!.path),fit: BoxFit.cover,)
               ,),
           ),
            ElevatedButton(onPressed: ()async{
              final XFile? photo=await _imagePicker.pickImage(source: ImageSource.gallery);
              setState(() {
                file =photo;
              });
            }, child: Text('Pick Image From Gallery')),
          ],
        ),
      ),
    );
  }
}
