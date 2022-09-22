import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';


class GridViewNew extends StatelessWidget {
  const GridViewNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: masonryLayout(context));
  }
}

Widget masonryLayout(BuildContext context) {
  return MasonryGridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: false,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
            ));
      });
}
