import 'package:flutter/material.dart';
import 'package:ivictim/models/social.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const FooterMobile(),
      tablet: (BuildContext context) => const FooterMobile(),
      desktop: (BuildContext context) => const FooterDesktop(),
      watch: (BuildContext context) => Container(color: Colors.white),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: const BoxDecoration(
          color: Colors.black38,
          image: DecorationImage(
            image: AssetImage("assets/1.png"),
            fit: BoxFit.cover,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/logo2.png",
              height: 100.0,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const MenuList(),
            const SizedBox(
              height: 20.0,
            ),
            const ContactInfo(),
            const SizedBox(
              height: 20.0,
            ),
            const SocialLinks(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("\u00a9 iVICTIM",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white)),
                    Text("All Rights Reserved.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Image.asset("assets/1.png",
            height: size.height * 0.7, width: size.width, fit: BoxFit.cover),
        Positioned.fill(
          child: Container(
            height: size.height * 0.7,
            width: size.width,
            color: Colors.black54,
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/logo2.png",
                    height: 100.0,
                    fit: BoxFit.contain,
                  ),
                  const MenuList(),
                  const ContactInfo(),
                  const SocialLinks()
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("\u00a9 iVICTIM",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                  Text("All Rights Reserved.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("FOLLOW US",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .apply(color: Colors.red, fontWeightDelta: 5)),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          height: 2.0,
          width: 40.0,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(socials.length, (index) {
            Social social = socials[index];
            return TextButton.icon(
              icon: Image.asset(
                social.icon!,
                height: 20.0,
                width: 20.0,
                fit: BoxFit.contain,
              ),
              onPressed: () {},
              label: const Text(
                "@iVictim",
                style: TextStyle(color: Colors.white),
              ),
            );
          }),
        )
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("CONTACT US",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .apply(color: Colors.red, fontWeightDelta: 2)),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          height: 2.0,
          width: 40.0,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton.icon(
          icon: const Icon(
            Icons.phone,
            color: Colors.white,
          ),
          onPressed: () {},
          label: const Text(
            "+254700000000",
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton.icon(
          icon: const Icon(
            Icons.email_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
          label: const Text(
            "info@ivictim.africa",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("MENU",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .apply(color: Colors.red, fontWeightDelta: 2)),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          height: 2.0,
          width: 40.0,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Objectives",
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Videos",
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Our Team",
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "About Us",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
