import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iurc_mobile_app/screens/event/view/widgets/card_wrapper.dart';
import 'package:iurc_mobile_app/screens/screens.dart';
import 'package:iurc_mobile_app/widgets/keyboard_hider.dart';

import '../result_edit.dart';

class ResultEditView extends StatelessWidget {
  const ResultEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Результат")),
      body: KeyboardHider(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          child: Column(
            children: [
              _Dialoger(),
              Card(
                elevation: 5,
                color: Colors.lightBlue[100],
                child: _EditingArea(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Dialoger extends StatelessWidget {
  const _Dialoger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResultEditCubit, ResultEditState>(
      child: Container(),
      listener: (context, state) {
        switch (state.status) {
          // case EditStatus.loading:
          //   showDialog(
          //     context: context,
          //     barrierDismissible: false,
          //     builder: (_) => AlertDialog(
          //       content: CircularProgressIndicator(),
          //     ),
          //   );
          //   break;
          case EditStatus.success:
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => AlertDialog(
                title: Text("Результат успешно сохранен"),
                actions: [
                  ElevatedButton(
                    child: Text("Ок"),
                    onPressed: () {
                      // eventBloc.add(EventResultCreated(state.result));
                      Navigator.of(context)..pop()..pop();
                    },
                  ),
                ],
              ),
            );
            break;
          case EditStatus.failure:
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => AlertDialog(
                title: Text("Ошибка загрузки"),
                actions: [
                  ElevatedButton(
                    child: Text("Ок"),
                    onPressed: () {},
                  ),
                ],
              ),
            );
            break;
          default:
        }
      },
    );
  }
}

class _EditingArea extends StatelessWidget {
  const _EditingArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () => _imgFromGallery(context),
            child: Container(
              // height: 220,
              // width: 220,
              decoration: BoxDecoration(
                color: Colors.lightBlue[200],
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color.fromRGBO(13, 71, 161, 1)),
              ),
              child: BlocBuilder<ResultEditCubit, ResultEditState>(
                buildWhen: (previous, current) => current.status != EditStatus.success,
                builder: (context, state) {
                  return state.result.photos.isNotEmpty
                      ? Image.file(
                          File(state.result.photos[0]),
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
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: CardWrapper(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Коментарий",
                isDense: true,
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 3,
              onChanged: (val) =>
                  context.read<ResultEditCubit>().onCommentUpdated(val),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton.icon(
              onPressed: () => context.read<ResultEditCubit>().onSave(),
              icon: Icon(Icons.save),
              label: Text("Сохранить"),
            ),
          ),
        )
      ],
    );
  }
}

void _imgFromGallery(BuildContext context) async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);

  if (image != null) {
    context.read<ResultEditCubit>().onImageUpload(image.path);
  }
}
