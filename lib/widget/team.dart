import 'package:flutter/material.dart';
import 'package:ivictim/models/member.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "MEET OUR TEAM",
          style:
              Theme.of(context).textTheme.headline5!.apply(color: Colors.red),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          width: size.width,
          height: 300.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(founders.length, (index) {
              Member founder = founders[index];

              return MemberCard(
                member: founder,
              );
            }),
          ),
        ),
        Container(
          height: 1.0,
          width: size.width * 0.4,
          color: Colors.grey,
        ),
        SizedBox(
          width: size.width,
          height: 300.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(group1.length, (index) {
              Member founder = group1[index];

              return MemberCard(
                member: founder,
              );
            }),
          ),
        ),
        SizedBox(
          width: size.width,
          height: 300.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(group2.length, (index) {
              Member founder = group2[index];

              return MemberCard(
                member: founder,
              );
            }),
          ),
        ),
      ],
    );
  }
}

class MemberCard extends StatelessWidget {
  final Member? member;
  const MemberCard({Key? key, this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile = sizingInformation.isMobile;

        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  member!.avatar!,
                  height: isMobile ? size.width * 0.25 : 200.0,
                  width: isMobile ? size.width * 0.25 : 200.0,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                member!.name!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                member!.title!,
                style: TextStyle(color: Colors.grey.shade800),
              )
            ],
          ),
        );
      },
    );
  }
}
