import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String description;

  const CustomDialog({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
              description,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 5.0),
          RaisedButton(
            color: Colors.black,
            textColor: Colors.white,
            shape: const RoundedRectangleBorder(),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Tamam',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
