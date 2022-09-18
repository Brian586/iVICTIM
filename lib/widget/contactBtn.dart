import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final Color? color;

  const ContactButton({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color: color!,
              width: 1.5,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: Text(
              "CONTACT US",
              style: TextStyle(
                color: color!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
