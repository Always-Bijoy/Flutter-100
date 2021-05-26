import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> _image = [];
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image.add(File(pickedFile.path));
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: _image.isEmpty
                  ? Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(child: Icon(Icons.add_a_photo)),
                    )
                  : Container(
                      child: Container(
                        height: 180,
                        width: 180,
                        child: Image.file(
                          _image[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
            ),
            SizedBox(
              height: 10,
            ),
            _image.isEmpty
                ? Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(child: Icon(Icons.add_a_photo)),
                  )
                : Container(
                    child: Wrap(
                      children: List.generate(
                        _image.length,
                        (index) => _image.asMap().containsKey(index) ? Text('index 0'): Container(
                          height: 80,
                          width: 80,
                          child:
                          Image.file(
                            _image[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
