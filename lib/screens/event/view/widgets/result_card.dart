import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

import 'widgets.dart';

class ResultCard extends StatelessWidget {
  final Result result;
  const ResultCard({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Результат",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.blue[900]),
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          (result.photos.isNotEmpty)
              ? PostImage(imageUrl: result.photos[0])
              : Container(),
          Text(
            result.comment,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
