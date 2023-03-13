import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewFTweet extends StatefulWidget {
  const NewFTweet({super.key});

  @override
  State<NewFTweet> createState() => _NewFTweetState();
}

class _NewFTweetState extends State<NewFTweet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
            shadowColor: Colors.black,
            elevation: 3,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 16),
                child: Text('Done'),
              )
            ]),
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 50,
          ),
        ])));
  }
}
