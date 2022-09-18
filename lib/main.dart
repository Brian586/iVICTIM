import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ivictim/widget/about.dart';
import 'package:ivictim/widget/animations.dart';
import 'package:ivictim/widget/approach.dart';
import 'package:ivictim/widget/contactBtn.dart';
import 'package:ivictim/widget/customAppbar.dart';
import 'package:ivictim/widget/customFooter.dart';
import 'package:ivictim/widget/emailUs.dart';
import 'package:ivictim/widget/intro.dart';
import 'package:ivictim/widget/objectives.dart';
import 'package:ivictim/widget/team.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_strategy/url_strategy.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setPathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iVICTIM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  bool lastStatus = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _controller.hasClients &&
        _controller.offset > (200 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      //backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(size.width, 100.0),
        child: CustomAppBar(
          isShrink: isShrink,
        ),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            Intro(),
            About(),
            Objectives(),
            Approach(),
            Animations(),
            Team(),
            EmailUs(),
            CustomFooter()
          ],
        ),
      ),
    );
  }
}
