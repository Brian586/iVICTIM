import 'package:flutter/material.dart';
import 'package:ivictim/models/animationVideo.dart';
import 'package:ivictim/widget/customVideoWidget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Animations extends StatefulWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const AnimationsMobile(),
      tablet: (BuildContext context) => const AnimationsMobile(),
      desktop: (BuildContext context) => const AnimationsDesktop(),
      watch: (BuildContext context) => Container(color: Colors.white),
    );
  }
}

class AnimationsMobile extends StatelessWidget {
  const AnimationsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "OUR ANIMATIONS",
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.headline5!.apply(color: Colors.red),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(videos.length, (index) {
            AnimationVideo video = videos[index];
            bool isEven = index % 2 != 0;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                width: size.width,
                color: isEven ? Colors.black12 : Colors.transparent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05, vertical: 20.0),
                      child: CustomVideoWidget(
                        videoId: video.videoId,
                      ),
                    ),
                    Text(
                      video.title!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Text(
                        video.description!,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

class AnimationsDesktop extends StatelessWidget {
  const AnimationsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "OUR ANIMATIONS",
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.headline5!.apply(color: Colors.red),
        ),
        Column(
          children: List.generate(videos.length, (index) {
            AnimationVideo video = videos[index];
            bool isEven = index % 2 != 0;

            return Stack(children: [
              Image.asset("assets/icons/background.png",
                  height: size.height * 0.7,
                  width: size.width,
                  fit: BoxFit.contain),
              Positioned.fill(
                child: Container(
                  height: size.height * 0.7,
                  width: size.width,
                  color: isEven ? Colors.black12 : Colors.transparent,
                ),
              ),
              Positioned.fill(
                child: isEven
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  video.title!,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  video.description!,
                                  textAlign: TextAlign.end,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            //child: Container(),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.05),
                              child: CustomVideoWidget(
                                videoId: video.videoId,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            //child: Container(),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.05),
                              child: CustomVideoWidget(
                                videoId: video.videoId,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  video.title!,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(video.description!)
                              ],
                            ),
                          )
                        ],
                      ),
              )
            ]);
          }),
        ),
      ],
    );
  }
}
