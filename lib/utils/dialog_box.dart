import 'package:flutter/material.dart';
import 'package:todo_app/utils/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onAdd;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onAdd,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  hintText: 'Add a new task',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buttons(text: 'Cancel', onPressed: onCancel),
                  const SizedBox(width: 8),
                  Buttons(text: 'Add', onPressed: onAdd),
                ],
              )
            ],
          )),
    );
  }
}
