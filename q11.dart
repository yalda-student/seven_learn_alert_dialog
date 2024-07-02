import 'package:flutter/material.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Terms and Conditions'),
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        content: RichText(
          text: const TextSpan(
            text:
                'Terms of service (also known as terms of use and terms and conditions, commonly abbreviated as TOS or ToS, ToU or T&C) are the ',
            style: TextStyle(color: Colors.black, height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'legal agreements',
                  style: TextStyle(decoration: TextDecoration.underline)),
              TextSpan(text: ' between a '),
              TextSpan(
                text: ' service provider',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              TextSpan(
                  text:
                      ' and a person who wants to use that service. The person must agree to abide by the terms of service in order to use the offered service.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.grey),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Accept'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
