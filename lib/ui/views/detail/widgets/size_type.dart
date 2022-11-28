import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/components/title-common/title_common.dart';

class SizeType extends StatelessWidget {
  const SizeType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleCommon(title: "Size", size: 20.0),
        Row(
          children: const [
            CircleAvatar(
                child: Text('EU',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600))),
            SizedBox(
              width: 2,
            ),
            CircleAvatar(
              child: Text('US'),
            ),
            SizedBox(
              width: 2,
            ),
            CircleAvatar(
              child: Text('UK'),
            ),
          ],
        )
      ],
    );
  }
}
