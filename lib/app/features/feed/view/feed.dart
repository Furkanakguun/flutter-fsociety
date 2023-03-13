import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fsociety/app/consts/textconstant.dart';
import 'package:fsociety/app/features/feed/lazy_load_list/lazy_load_list_feed.dart';
import 'package:fsociety/app/features/feed/staggered_view/view/staggered_view_list.dart';
import 'package:fsociety/app/features/feed/view/new_ftweet.dart';
import 'package:get/get.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final ScrollController _scrollViewController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(NewFTweet());
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
            controller: _scrollViewController,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: AutoSizeText(
                    "Welcome to FSociety Flutter Social",
                    style: pageTitleStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: AutoSizeText(
                    "This project has been designed to accommodate the needs of any social networking project.",
                    style: subheaderStyle,
                  ),
                ),
                Divider(
                  height: 20,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lazy Load Feed',
                  style: subheaderStyleSmall,
                ),
                FSocietyLazyLoad(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 20,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Staggered Photo Grid View',
                  style: subheaderStyleSmall,
                ),
                StaggeredViewList(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 20,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Upload Steppers',
                  style: subheaderStyleSmall,
                ),
              ],
            )));
  }
}
