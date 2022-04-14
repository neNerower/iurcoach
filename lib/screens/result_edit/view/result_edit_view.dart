import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iurc_mobile_app/screens/event/view/widgets/card_wrapper.dart';

import '../result_edit.dart';

class ResultEditView extends StatelessWidget {
  const ResultEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Результат")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: CardWrapper(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _imgFromGallery(context),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: BlocBuilder<ResultEditCubit, ResultEditState>(
                    builder: (context, state) {
                      return state.result.photos.isNotEmpty
                          ? Image.file(
                              File(state.result.photos[0]),
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.fitHeight,
                            )
                          : Icon(
                              Icons.add_a_photo_rounded,
                              size: 100,
                              color: Colors.grey[800],
                            );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
    );
  }
}

void _imgFromGallery(BuildContext context) async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);

  if (image != null) {
    context.read<ResultEditCubit>().onImageUpload(image.path);
  }
}
