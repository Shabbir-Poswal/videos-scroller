import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {


  VideoPlayerController? controller1;
  VideoPlayerController? controller2;
  VideoPlayerController? controller3;
  VideoPlayerController? controller4;
  VideoPlayerController? controller5;
  VideoPlayerController? controller6;
  VideoPlayerController? controller7;
  VideoPlayerController? controller8;
  VideoPlayerController? controller9;
  VideoPlayerController? controller10;

  List<String> videos=[
    "assets/1.mp4",
    "assets/2.mp4",
    "assets/3.mp4",
    "assets/4.mp4",
    "assets/5.mp4",
    "assets/6.mp4",
    "assets/7.mp4",
    "assets/8.mp4",
    "assets/19.mp4",
    "assets/10.mp4",




  ];

  @override
  void initState() {
    super.initState();
    initilizw();
    controller1!.setLooping(true);
    controller2!.setLooping(true);
  }
  List <VideoPlayerController> cntrl=[];
  void initilizw(){
    controller1 = VideoPlayerController.asset(videos[0])..initialize().then((_) {

      setState(() {});
    });
    controller2 = VideoPlayerController.asset(videos[1])..initialize().then((_) {

      setState(() {});
    }); controller3 = VideoPlayerController.asset(videos[2])..initialize().then((_) {

      setState(() {});
    }); controller4 = VideoPlayerController.asset(videos[3])..initialize().then((_) {

      setState(() {});
    });
    controller5 = VideoPlayerController.asset(videos[4])..initialize().then((_) {

      setState(() {});
    });
    controller6 = VideoPlayerController.asset(videos[5])..initialize().then((_) {

      setState(() {});
    });
    controller7 = VideoPlayerController.asset(videos[6])..initialize().then((_) {

      setState(() {});
    });
    controller8 = VideoPlayerController.asset(videos[7])..initialize().then((_) {

      setState(() {});
    });
    controller9 = VideoPlayerController.asset(videos[8])..initialize().then((_) {

      setState(() {});
    });
    controller10 = VideoPlayerController.asset(videos[9])..initialize().then((_) {

      setState(() {});
    });

    controller1!.setLooping(true);
    controller2!.setLooping(true);
    controller3!.setLooping(true);
    controller4!.setLooping(true);
    controller5!.setLooping(true);
    controller6!.setLooping(true);
    controller7!.setLooping(true);
    controller8!.setLooping(true);
    controller9!.setLooping(true);
    controller10!.setLooping(true);

    cntrl.add(controller1!);
    cntrl.add(controller2!);
    cntrl.add(controller3!);
    cntrl.add(controller4!);
    cntrl.add(controller5!);
    cntrl.add(controller6!);
    cntrl.add(controller7!);
    cntrl.add(controller8!);
    cntrl.add(controller9!);
    cntrl.add(controller10!);
  }

  @override
  void dispose() {
    controller1!.dispose();
    controller2!.dispose();
    controller3!.dispose();
    controller4!.dispose();
    controller5!.dispose();
    controller6!.dispose();
    controller7!.dispose();
    controller8!.dispose();
    controller9!.dispose();
    controller10!.dispose();
    super.dispose();
  }

  PageController pageController = PageController(viewportFraction: 0.5,
      initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Video Player App"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child:ListView.builder(itemCount: 10,controller:ScrollController(),shrinkWrap: true,
              itemBuilder: (context,i){
                return  Stack(alignment: AlignmentDirectional.center,
                  children: [
                    ClipRRect( borderRadius: BorderRadius.circular(100),
                      child: Container(margin: EdgeInsets.all(20),
                        width: double.maxFinite,height: 700,decoration: BoxDecoration(color: Colors.black54,),child:VideoPlayer(cntrl[i]),),
                    ),
                    GestureDetector(onTap: (){
                      cntrl[i].play();
                    },
                      child: Opacity(
                        opacity: 0.1,
                        child: Container(height: 50,width: 50,child: Icon(Icons.play_arrow),
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),),
                      ),
                    )
                  ],
                );
              }
              ),)
    );
  }
}