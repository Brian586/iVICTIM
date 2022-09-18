import 'package:flutter/material.dart';
import 'package:ivictim/widget/learnMore.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Objectives extends StatelessWidget {
  const Objectives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ObjectivesMobile(),
      tablet: (BuildContext context) => const ObjectivesMobile(),
      desktop: (BuildContext context) => const ObjectivesDesktop(),
      watch: (BuildContext context) => Container(color: Colors.white),
    );
  }
}

class ObjectivesDesktop extends StatelessWidget {
  const ObjectivesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.7,
      width: size.width,
      color: Colors.black12,
      child: Stack(
        children: [
          Image.asset("assets/icons/background.png",
              height: size.height * 0.7,
              width: size.width,
              fit: BoxFit.contain),
          Positioned(
            bottom: 10.0,
            right: 0.0,
            left: size.width * 0.7,
            child: Image.asset("assets/clip3.png",
                height: size.height * 0.3,
                width: size.width,
                fit: BoxFit.contain),
          ),
          Positioned.fill(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset("assets/2.jpg",
                      height: size.height * 0.7,
                      //width: size.width,
                      fit: BoxFit.cover),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "OUR OBJECTIVES",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .apply(color: Colors.red),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text("Our main focus:"),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10.0,
                            color: Colors.red,
                          ),
                          title: Text(
                              "To create awareness through 3D animation presentation"),
                        ),
                        const ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10.0,
                            color: Colors.red,
                          ),
                          title: Text(
                              "To educate and inform the public on being a respectful digital citizen"),
                        ),
                        const ListTile(
                          leading: Icon(
                            Icons.circle,
                            size: 10.0,
                            color: Colors.red,
                          ),
                          title: Text(
                              "To teach young people  how to manage harmful situations online and the type of content they consume"),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [LearnMore(), SizedBox()],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ObjectivesMobile extends StatelessWidget {
  const ObjectivesMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: 500.0,
        ),
        Positioned(
          top: 0.0,
          bottom: 0.0,
          right: 0.0,
          child: Image.asset("assets/2.jpg",
              height: 500.0, width: size.width * 0.7, fit: BoxFit.cover),
        ),
        Positioned(
          top: 50.0,
          bottom: 50.0,
          left: 20.0,
          child: Container(
            width: size.width * 0.8,
            //height: 400.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 6.0, blurRadius: 6.0)
                ],
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OUR OBJECTIVES",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .apply(color: Colors.red),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text("Our main focus:"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10.0,
                      color: Colors.red,
                    ),
                    title: Text(
                        "To create awareness through 3D animation presentation"),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10.0,
                      color: Colors.red,
                    ),
                    title: Text(
                        "To educate and inform the public on being a respectful digital citizen"),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10.0,
                      color: Colors.red,
                    ),
                    title: Text(
                        "To teach young people  how to manage harmful situations online and the type of content they consume"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [LearnMore(), SizedBox()],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
