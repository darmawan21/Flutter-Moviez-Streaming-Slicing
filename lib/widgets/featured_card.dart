import 'package:blur/blur.dart';
import 'package:bwa_challage/models/featured.dart';
import 'package:bwa_challage/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeaturedCard extends StatelessWidget {
  final Featured featured;

  FeaturedCard(this.featured);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 279,
      margin: EdgeInsets.only(
        top: 24,
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 110),
              width: 244,
              height: 11,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Color(0xFF5E38E5),
                boxShadow: [
                  BoxShadow(
                    color: featured.color,
                    blurRadius: 30,
                    offset: Offset(0, 8),
                  )
                ]
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(21),
                child: Image.asset(
                  featured.imageUrl,
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          featured.name,
                          style: purpleBlueTitleTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          featured.category,
                          style: greyColorTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RatingBarIndicator(
                    rating: featured.rating,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: yellowStarColor,
                    ),
                    itemCount: 5,
                    itemSize: 18,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
