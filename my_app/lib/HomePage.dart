import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            color: Color.fromARGB(255, 0, 0, 0),
            child: ListTile(
              leading: CircleAvatar(
                foregroundImage: NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
              ),
              title: Row(
                children: [
                  Text('Abdul Rehman', style: TextStyle(fontFamily: 'Schyler')),
                  Opacity(
                      opacity: 0.5,
                      child: Row(
                        children: [
                          Text('  @Abbasi12'),
                          Text(' .20h'),
                        ],
                      )),
                  Expanded(child: SizedBox()),
                  Opacity(
                    opacity: 0.5,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              subtitle: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                        'Hey! I am the Google Student developer club lead and I am here to help you with your queries.Google Student Developer Club is a community which promotes peer to peer learning enviorment and enable students to make real work solutions impacting thier own lives and the lives of people around them.',
                        style: TextStyle(fontFamily: 'Trajan Pro')),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Row(
                      children: [
                        Icon(
                          Icons.messenger_outline_rounded,
                          color: Colors.white,
                        ),
                        Text('  1.2k'),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.reply,
                          color: Colors.white,
                        ),
                        Text('  1.2k'),
                        Expanded(child: SizedBox()),
                        Icon(Icons.favorite_border, color: Colors.white),
                        Text('  1.2k'),
                        Expanded(child: SizedBox()),
                        Icon(Icons.save_alt_outlined, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
