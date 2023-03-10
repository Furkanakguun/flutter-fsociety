import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../../utils/lazy_load_scrollview.dart';
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

  bool isLoadingList = false;

  late QuerySnapshot collectionState;

  List<FTweet> listDocument = [];
  // Fetch first 15 documents
  Future<void> getDocuments() async {
    setState(() {
      isLoadingList = true;
    });
    listDocument = [];

    var timeline = FirebaseFirestore.instance
        .collection('ftweets')
        .doc('userId')
        .collection('tweets')
        .orderBy('timestamp', descending: true)
        .limit(15);
    fetchDocumentsPublic(timeline);
  }

  // Fetch next 5 documents starting from the last document fetched earlier
  Future<void> getDocumentsNextPublic() async {
    setState(() {
      isLoadingList = true;
    });

    // Get the last visible document
    if (collectionState.docs.isNotEmpty) {
      var lastVisible = collectionState.docs[collectionState.docs.length - 1];
      var timeline = FirebaseFirestore.instance
          .collection('ftweets')
          .doc('userId')
          .collection('tweets')
          .orderBy('timestamp', descending: true)
          .startAfterDocument(lastVisible)
          .limit(10);

      fetchDocumentsPublic(timeline);
    } else {
      setState(() {
        isLoadingList = false;
      });
    }
  }

  fetchDocumentsPublic(Query timeline) {
    timeline.get().then((value) {
      collectionState =
          value; // store collection state to set where to start next
      value.docs.forEach((element) async {
        //print('getDocuments ${element.data()}');
        await FirebaseFirestore.instance
            .collection('tweets')
            .doc(element.id)
            .get()
            .then((doc) => {
                  if (mounted)
                    {
                      setState(() {
                        if (doc.exists) {
                          listDocument.add(FTweet(
                            postId: doc['postId'],
                            isImageTweet: doc['isImageTweet'],
                            questionPost: doc['questionPost'],
                            title: doc['title'],
                            subtitle: doc['subtitle'],
                            content: doc['content'],
                          ));
                        }
                      })
                    }
                });
      });
    }).then((value) => {
          if (mounted)
            {
              setState(() {
                isLoadingList = false;
              })
            }
        });
  }

  @override
  void initState() {
    //----- Uncomment this method for real data fetching -----\\
    //getDocuments();
    //---------------- ------------------- ------------------- -------\\
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LazyLoadScrollView(
          isLoading: isLoadingList,
          onEndOfPage: () {},
          //----- Uncomment this method for loading next 5 documents -----\\
          //onEndOfPage: () => getDocumentsNextPublic(),
          //---------------- ------------------- ------------------- -------\\
          child: ScrollablePositionedList.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            // Length for real data uncomment for production
            //itemCount: listDocument.length,
            itemCount: 3,
            itemBuilder: (context, index) {
              //----- Uncomment this method for displaying FTweet item -----\\
              // final FTweet fTweet = listDocument[index];
              // return FTweet(
              //   postId: index.toString(),
              //   isImageTweet: fTweet.isImageTweet,
              //   questionPost: fTweet.questionPost,
              //   title: fTweet.title,
              //   subtitle: fTweet.subtitle,
              //   content: fTweet.content,
              // );
              //---------------- ------------------- ------------------- -------\\
              return FTweet(
                postId: index.toString(),
                isImageTweet: false,
                questionPost: false,
                title: "Title",
                subtitle: "Subtitle",
                content: "Content",
              );
            },
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
          ),
        ),
      ],
    );
  }
}
