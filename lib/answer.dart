import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback select_handler;
  final String answer_text;

  Answer(this.select_handler, this.answer_text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 157, 101, 194)),
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        child: Text(answer_text),
        onPressed: select_handler,
      ),
    );
  }
}
