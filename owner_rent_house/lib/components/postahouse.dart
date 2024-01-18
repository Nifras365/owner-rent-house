import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostaHouse extends StatefulWidget {
  const PostaHouse({Key? key}) : super(key: key);

  @override
  _PostaHouseState createState() => _PostaHouseState();
}

class _PostaHouseState extends State<PostaHouse> {
  File? _selectedImage;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = '';
  String address = '';
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post a House'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Name of the owner'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'University'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the university';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Faculty'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the faculty';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    imageUrl = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Number of rooms'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Number of rooms';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Number of person'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of person';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Rent'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the rent';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contact number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the contact number';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
                width: 150,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    _pickImageFromGallery();
                  },
                  label: const Text('Pick an image from gallery'),
                  icon: const Icon(Icons.image)),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  _pickImageFromCamara();
                },
                label: const Text('Pick an image from camara'),
                icon: const Icon(Icons.camera_alt),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //
                },
                child: const Text('Submit'),
              ),
              const SizedBox(
                height: 20,
              ),
              _selectedImage != null
                  ? Image.file(_selectedImage!)
                  : const Text("Please select an image")
            ],
          ),
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }

  Future _pickImageFromCamara() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }
}
