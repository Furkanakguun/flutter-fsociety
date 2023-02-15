import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../model/tweet_model.dart';

class FSocietyLazyLoad extends StatefulWidget {
  const FSocietyLazyLoad({super.key});

  @override
  State<FSocietyLazyLoad> createState() => _FSocietyLazyLoadState();
}

class _FSocietyLazyLoadState extends State<FSocietyLazyLoad> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ScrollablePositionedList.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 500,
      itemBuilder: (context, index) {
        return FTweet(
          postId: index.toString(),
          imagePost: false,
          questionPost: false,
        );
      },
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
    ));
  }
}
