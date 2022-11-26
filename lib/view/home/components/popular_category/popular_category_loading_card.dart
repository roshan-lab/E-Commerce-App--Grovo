import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';





class PopularCategoryloadingCard extends StatelessWidget {
  const PopularCategoryloadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
      child: Material(
        elevation: 10,
        shadowColor: Colors.grey.shade600,
        borderRadius: BorderRadius.circular(10),
        child: Shimmer.fromColors(
            child: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            baseColor: Colors.green.shade400,
            highlightColor: Colors.white),
      ),
    );
  }
}
