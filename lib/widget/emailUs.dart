import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ivictim/models/social.dart';
import 'package:ivictim/widget/customButton.dart';
import 'package:ivictim/widget/customTextField.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EmailUs extends StatefulWidget {
  const EmailUs({Key? key}) : super(key: key);

  @override
  State<EmailUs> createState() => _EmailUsState();
}

class _EmailUsState extends State<EmailUs> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const EmailUsMobile(),
      tablet: (BuildContext context) => const EmailUsMobile(),
      desktop: (BuildContext context) => const EmailUsDesktop(),
      watch: (BuildContext context) => Container(color: Colors.white),
    );
  }
}

class EmailUsMobile extends StatefulWidget {
  const EmailUsMobile({Key? key}) : super(key: key);

  @override
  State<EmailUsMobile> createState() => _EmailUsMobileState();
}

class _EmailUsMobileState extends State<EmailUsMobile> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "TALK TO US",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .apply(color: Colors.red),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Let's talk about \nInternet Security",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const Text(
                  "Send us an email or contact us through our social media handles",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(socials.length, (index) {
                    Social social = socials[index];

                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          social.icon!,
                          height: 20.0,
                          width: 20.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: 20.0),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/3.jpg"), fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          "EMAIL US",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .apply(color: Colors.red),
                        ),
                        MyTextField(
                          controller: name,
                          hintText: "Name",
                          width: size.width,
                          title: "Name: ",
                          inputType: TextInputType.name,
                        ),
                        MyTextField(
                          controller: email,
                          hintText: "Email",
                          width: size.width,
                          title: "Email: ",
                          inputType: TextInputType.emailAddress,
                        ),
                        MyTextField(
                          controller: description,
                          hintText: "Type Something...",
                          width: size.width,
                          title: "Type Something here:",
                          inputType: TextInputType.text,
                        ),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            title: "Send Email",
                            color: Colors.red,
                            onTap: () {
                              if (name.text.isNotEmpty &&
                                  email.text.isNotEmpty &&
                                  description.text.isNotEmpty) {
                                Timer(const Duration(seconds: 3), () {
                                  Fluttertoast.showToast(
                                      msg: "Email Sent Successfully!");

                                  setState(() {
                                    name.clear();
                                    email.clear();
                                    description.clear();
                                  });
                                });
                              }
                            },
                          ),
                          const SizedBox()
                        ],
                      )
                    ],
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

class EmailUsDesktop extends StatefulWidget {
  const EmailUsDesktop({Key? key}) : super(key: key);

  @override
  State<EmailUsDesktop> createState() => _EmailUsDesktopState();
}

class _EmailUsDesktopState extends State<EmailUsDesktop> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Image.asset("assets/icons/background.png",
            height: size.height * 0.7, width: size.width, fit: BoxFit.contain),
        Positioned.fill(
          child: Container(
            height: size.height * 0.7,
            width: size.width,
            color: Colors.black12,
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "TALK TO US",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .apply(color: Colors.red),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Let's talk about \nInternet Security",
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const Text(
                        "Send us an email or contact us through our social media handles",
                        textAlign: TextAlign.end,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(socials.length, (index) {
                          Social social = socials[index];

                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                social.icon!,
                                height: 20.0,
                                width: 20.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05, vertical: 20.0),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage("assets/3.jpg"),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "EMAIL US",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .apply(color: Colors.red),
                                    ),
                                    MyTextField(
                                      controller: name,
                                      hintText: "Name",
                                      width: size.width,
                                      title: "Name: ",
                                      inputType: TextInputType.name,
                                    ),
                                    MyTextField(
                                      controller: email,
                                      hintText: "Email",
                                      width: size.width,
                                      title: "Email: ",
                                      inputType: TextInputType.emailAddress,
                                    ),
                                    MyTextField(
                                      controller: description,
                                      hintText: "Type Something...",
                                      width: size.width,
                                      title: "Type Something here:",
                                      inputType: TextInputType.text,
                                    ),
                                  ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                  title: "Send Email",
                                  color: Colors.red,
                                  onTap: () {
                                    if (name.text.isNotEmpty &&
                                        email.text.isNotEmpty &&
                                        description.text.isNotEmpty) {
                                      Timer(const Duration(seconds: 3), () {
                                        Fluttertoast.showToast(
                                            msg: "Email Sent Successfully!");

                                        setState(() {
                                          name.clear();
                                          email.clear();
                                          description.clear();
                                        });
                                      });
                                    }
                                  },
                                ),
                                const SizedBox()
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
