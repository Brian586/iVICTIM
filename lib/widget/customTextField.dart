import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final double? width;
  final String? title;
  final TextInputType? inputType;

  const MyTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.width,
      this.title,
      this.inputType})
      : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: SizedBox(
        width: widget.width,
        height: 60.0,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title!,
              style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 35.0,
              width: widget.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Colors.grey.shade300,
                  width: 1.0,
                ),
                // boxShadow: [
                //   BoxShadow(
                //       offset: const Offset(0, 0),
                //       spreadRadius: 2.0,
                //       //blurRadius: 3.0,
                //       color: isSelected ? Colors.white38 : Colors.transparent
                //   )
                // ]
              ),
              // padding: EdgeInsets.all(8.0),
              // margin: EdgeInsets.all(10.0),
              child: Center(
                child: FocusScope(
                  onFocusChange: (v) {
                    setState(() {
                      isSelected = v;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: TextFormField(
                      controller: widget.controller,
                      keyboardType: widget.inputType,
                      //style: TextStyle(fontSize: 10.0, color: Colors.black),
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration.collapsed(
                        hintText: widget.hintText,
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(15.0),
                        //     borderSide: BorderSide(
                        //       width: 1.0,
                        //       color: focusColor!
                        //     )
                        // ),
                        //prefixIcon: Icon(data, color: Colors.grey[400],),
                        focusColor: Theme.of(context).primaryColor,
                        // hintText: hintText,
                        // labelText: hintText,
                        //hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
