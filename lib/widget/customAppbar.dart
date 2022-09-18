import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contactBtn.dart';

class CustomAppBar extends StatelessWidget {
  final bool? isShrink;
  const CustomAppBar({Key? key, this.isShrink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile = sizingInformation.isMobile;

        return AnimatedContainer(
          color: isShrink! ? Colors.black : Colors.transparent,
          duration: const Duration(seconds: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isShrink!
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: RichText(
                        text: TextSpan(
                          //style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'iV',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.white)),
                            TextSpan(
                                text: 'ICT',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.red)),
                            TextSpan(
                                text: 'IM',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  : Image.asset(
                      "assets/logo2.png",
                      height: 100.0,
                      fit: BoxFit.contain,
                    ),
              isMobile
                  ? IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  : AnimatedOpacity(
                      opacity: isShrink! ? 1.0 : 0.0,
                      duration: const Duration(seconds: 2),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "OBJECTIVES",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "VIDEOS",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "TEAM",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "ABOUT US",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const ContactButton(
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
            ],
          ),
        );
      },
    );
  }
}
