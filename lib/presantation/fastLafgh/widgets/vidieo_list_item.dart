import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Vidieolistitem extends StatelessWidget {
  Vidieolistitem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  final List<String> videosList = [
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-posing-for-the-camera-in-the-middle-of-nowhere-34407-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-woman-posing-for-the-camera-in-the-middle-of-a-34404-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-portrait-of-a-woman-in-a-pool-1259-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-lying-in-an-armchair-using-an-ipad-4959-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-woman-in-a-bikini-in-front-of-a-tiled-1263-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-red-frog-on-a-log-1487-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-white-cat-with-blue-eyes-1545-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-drummer-playing-a-cymbal-with-rhythm-42810-large.mp4',
 
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.accents[index % Colors.accents.length],
          child: FastVideoPlayer(
            index: index,
            vidioUrl: videosList,
            onStateChanged: (bool) {},
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //---leftside---//

                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      size: 30,
                    ),
                  ),
                ),

                //----rightside---//
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://igimages.gumlet.io/tamil/home/vikram-kamal-vjs-10752021m.jpg?w=376&dpr=2.6",
                        ),
                      ),
                    ),
                    VideoActiobswidget(
                        icone: Icons.emoji_emotions, title: 'LOL'),
                    VideoActiobswidget(icone: Icons.add, title: 'My List'),
                    VideoActiobswidget(icone: Icons.share, title: 'Share'),
                    VideoActiobswidget(icone: Icons.play_arrow, title: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActiobswidget extends StatelessWidget {
  const VideoActiobswidget({
    Key? key,
    required this.icone,
    required this.title,
  }) : super(key: key);
  final IconData icone;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icone,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class FastVideoPlayer extends StatefulWidget {
  FastVideoPlayer({
    Key? key,
    required this.index,
    required this.vidioUrl,
    required this.onStateChanged,
  }) : super(key: key);
  final List<String> vidioUrl;
  final index;
  final void Function(bool isPlaying) onStateChanged;

  @override
  State<FastVideoPlayer> createState() => _FastVideoPlayerState();
}

class _FastVideoPlayerState extends State<FastVideoPlayer> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    // TODO: implement initState
    _videoController = VideoPlayerController.network(
        widget.vidioUrl[widget.index % widget.vidioUrl.length]);
    _videoController.initialize().then((value) {
      setState(() {
        _videoController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _videoController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: VideoPlayer(_videoController),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _videoController.dispose();
    super.dispose();
  }

}
