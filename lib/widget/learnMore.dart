import 'package:flutter/material.dart';

class LearnMore extends StatefulWidget {
  const LearnMore({Key? key}) : super(key: key);

  @override
  State<LearnMore> createState() => _LearnMoreState();
}

class _LearnMoreState extends State<LearnMore> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        onHover: (v) {
          setState(() {
            isHover = v;
          });
        },
        child: Container(
          height: 30.0,
          decoration: BoxDecoration(
              color: isHover ? Colors.red : Colors.transparent,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.red,
                width: 1.5,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                "LEARN MORE",
                style: TextStyle(
                  color: isHover ? Colors.white : Colors.red,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
