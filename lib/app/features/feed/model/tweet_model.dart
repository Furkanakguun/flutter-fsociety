import 'package:flutter/material.dart';
import '../../../consts/textconstant.dart';
import '../../../widgets/buttonWidgets.dart';

class FTweet extends StatefulWidget {
  final String postId;
  final bool isImageTweet;
  final String title;
  final String subtitle;
  final String content;
  final bool questionPost;
  const FTweet({
    super.key,
    required this.postId,
    required this.isImageTweet,
    required this.questionPost,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  // ignore: no_logic_in_create_state
  _FTweetState createState() => _FTweetState(
        // ignore: unnecessary_this
        postId: this.postId,
      );
}

class _FTweetState extends State<FTweet> {
  final String postId;

  _FTweetState({
    required this.postId,
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
      child: Container(
        width: queryData.size.width,
        height: widget.isImageTweet || widget.questionPost ? 260 : 200,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          //border: Border.all(color: Colors.red, width: 0.5),
          // image: const DecorationImage(
          //   image: NetworkImage(
          //       "https://firebasestorage.googleapis.com/v0/b/petapp-f989b.appspot.com/o/cat.jpg?alt=media&token=fc433f7c-a79e-4463-8178-7cdf853f6cd1"),
          //   //fit: BoxFit.cover,
          // ),
        ),
        child: Column(children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 25,
            ),
            title: const Text(
              'Name',
              textScaleFactor: 1,
              style: TextStyle(color: Colors.grey),
            ),
            // trailing: Icon(Icons.done),
            subtitle: Text('Subtitle', style: TextStyle(color: Colors.grey)),
            selected: true,
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Container(
              padding: EdgeInsets.only(right: 13.0),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: postContentStyle,
              ),
            ),
          ),
          widget.questionPost
              ? Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      outlinedButtonPostBlue("Agreed", () {}),
                      const SizedBox(
                        width: 15,
                      ),
                      outlinedButtonPostBlue("Not Agreed", () {}),
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.favorite_border,
                      size: 18, color: Colors.grey),
                  label: Text("Like", style: TextStyle(color: Colors.grey)),
                  onPressed: () {},
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.comment_outlined,
                    size: 18,
                    color: Colors.grey,
                  ),
                  label: Text(
                    "Comment",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      icon: const Icon(
                        Icons.ios_share,
                        size: 18,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Share",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
