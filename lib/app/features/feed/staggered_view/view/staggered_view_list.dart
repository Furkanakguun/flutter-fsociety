import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../model/common.dart';

class StaggeredViewList extends StatefulWidget {
  const StaggeredViewList({super.key});

  @override
  State<StaggeredViewList> createState() => _StaggeredViewListState();
}

//Mock data with pub dev package
class _StaggeredViewListState extends State<StaggeredViewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: ImageTile(
              index: 11,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: ImageTile(
              index: 10,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ImageTile(
              index: 9,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ImageTile(
              index: 8,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: ImageTile(
              index: 7,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: ImageTile(
              index: 0,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: ImageTile(
              index: 6,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ImageTile(
              index: 5,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ImageTile(
              index: 4,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ImageTile(
              index: 2,
              height: 350,
              width: 350,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ImageTile(
              index: 3,
              height: 350,
              width: 350,
            ),
          ),
        ],
      ),
    );
  }
}
