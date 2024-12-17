import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WhatsAppChatScreen(),
    );
  }
}

class WhatsAppChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: Column(
              children: [
                ChatTile(
                  name: 'shady',
                  message: 'تمام',
                  time: 'now',
                  image:
                      'image/en_us_arcane_character_jinx_vertical_4x5_rgb_5.webp',
                ),
                ChatTile(
                  name: 'ibrahim',
                  message: 'ازيك',
                  time: '5 min ago',
                  image: 'image/download (3).jpeg',
                ),
                ChatTile(
                  name: 'ali',
                  message: 'hello guy',
                  time: '12:10pm',
                  image:
                      'image/AAAAQd50ZyI6aK_hw-6MVW9CFJFT0Jz668npgwGHOI9p2ChsfOSPvSmMaj8PwF_YUwozr--b-rD-uhlLnSpecgk_x5nksyFViDylQw8_JGuDWOWJuq8A3i9zyPxPn0zi7_KJHQYfbEm6zM2jkv1TILqItxWR.jpg',
                ),
                ChatTile(
                  name: 'سيادة الرئيس عبدالفتاح السيسي',
                  message: "باشا البلد",
                  time: '3:00pm',
                  image: 'image/الرئيس-عبد-الفتاح-السيسي-black-one-finljpg.jpg',
                ),
                ChatTile(
                  name: 'muhammad',
                  message: 'حجز بكرا السساعة 9',
                  time: '9:00am',
                  image: 'image/Roronoa-Zoro-from-One-Piece-(1).avif',
                ),
                ChatTile(
                  name: 'bebo',
                  message: 'انت فين',
                  time: 'yesterday',
                  image:
                      'image/s1-spoilers-who-is-the-smartest-arcane-character-v0-8omf4mwcmy5c1.webp',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String image;

  ChatTile({
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 25,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  message,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
