import 'package:bwa_challage/models/search.dart';
import 'package:bwa_challage/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchCard extends StatelessWidget {
  final Search search;

  SearchCard(this.search);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 110,
            left: 10,
          ),
          width: 82,
          height: 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: Color(0xFF169E9F),
            boxShadow: [
              BoxShadow(
                color: search.color,
                blurRadius: 30,
                offset: Offset(0, 8),
              ),
            ],
          ),
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Container(
                width: 100,
                height: 127,
                child: Image.asset(
                  search.imageUrl,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  search.name,
                  style: purpleBlueTitleTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  search.category,
                  style: greyColorTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RatingBarIndicator(
                  rating: search.rating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: yellowStarColor,
                  ),
                  itemCount: 5,
                  itemSize: 18,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
