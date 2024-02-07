import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  /* bool _isVisible1 = true;
  bool _isVisible2 = true;
  bool _isVisible3 = true;
  bool _isVisible4 = true;
  bool _isVisible5 = true;
  bool _isVisible6 = true;*/

  final VideoURL = "https://www.youtube.com/watch?v=4gv9flGe5mw";
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(VideoURL);
    _youtubeController = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[700]!, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.blue[700],
          title: Text("Dukaan Premium"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              child: Icon(
                                Icons.shopping_bag,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              " dukaan",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "PREMIUM",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue[700]),
                            )
                          ],
                        ),
                        Text(
                          "Get Dukaan Premium for just",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "₹4,999/year",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "All the advanced features for scaling your",
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                        Text(
                          "business",
                          style: TextStyle(color: Colors.grey[400]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      "Features",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.language_rounded),
                ),
                title: Text(
                  "Custom domain name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                    "Get your own custom domain name and build your brand on the internet"),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.verified_rounded),
                ),
                title: Text(
                  "Verified seller badge",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                    "Get green verified seller badge under your store name and build trust"),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.laptop),
                ),
                title: Text(
                  "Dukaan for PC",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                    "Access all exclusive premium features on Dukaan for PC"),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.headset_mic_rounded),
                ),
                title: Text(
                  "Priority support",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                    "Get your questions resolved with our priority customer support"),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      "What is Dukaan Premium ?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: YoutubePlayer(
                  width: 400,
                  controller: _youtubeController,
                  showVideoProgressIndicator: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
