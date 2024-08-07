import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.green,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: const [
              SizedBox(width: 20),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(width: 20),
            ],
            backgroundColor: Colors.green,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: List.generate(
                userInfromation.length,
                (index) => ListViewChat(
                  userInfo: userInfromation[index],
                  index: index,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewChat extends StatelessWidget {
  final Map userInfo;
  final int index;

  const ListViewChat({super.key, required this.userInfo, required this.index});

  @override
  Widget build(BuildContext context) {
    String name = userInfo.keys.first;
    String message = userInfo.values.first;

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          imageProfile[index % imageProfile.length],
        ),
        radius: 30,
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      subtitle: Text(message),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "12:45",
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          SizedBox(height: 4),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 13,
            child: Text(
              "2",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

List<Map> userInfromation = [
  {'James': 'Hi I have messaged you Bro'},
  {'Abi': 'I also messaged you bro'},
  {'John': 'What are you doing?'},
  {'Emily': 'I am good, thanks'},
  {'Michael': 'How are you?'},
  {'Sarah': 'I am fine, thanks'},
  {'William': 'What is your plan?'},
  {'Olivia': 'I am going to the park'},
  {'David': 'That sounds fun'},
  {'Ava': 'Yes, it is'},
  {'Richard': 'I want to go too'},
  {'Isabella': 'You can come with us'},
  {'Charles': 'What time are you going?'},
  {'Sophia': 'We are going at 2 pm'},
  {'Thomas': 'I will meet you there'},
  {'Mia': 'See you then'},
  {'Benjamin': 'I am excited'},
  {'Charlotte': 'Me too'},
  {'Alexander': 'What will we do?'},
  {'Amelia': 'We will play games'},
  {'Elijah': 'That sounds fun'},
  {'Harper': 'I love playing games'},
  {'Jackson': 'Me too'},
  {'Evelyn': 'I am so happy'},
  {'Aiden': 'Me too'},
  {'Abigail': 'I am glad we are going'},
];

List imageProfile = [
  'https://images.pexels.com/photos/4029925/pexels-photo-4029925.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/4298629/pexels-photo-4298629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/5611966/pexels-photo-5611966.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/4728655/pexels-photo-4728655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/4927361/pexels-photo-4927361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/4823732/pexels-photo-4823732.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/4850291/pexels-photo-4850291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
];
