import 'package:bwa_challage/models/disney.dart';
import 'package:bwa_challage/models/featured.dart';
import 'package:bwa_challage/pages/search_page.dart';
import 'package:bwa_challage/theme.dart';
import 'package:bwa_challage/widgets/disney_card.dart';
import 'package:bwa_challage/widgets/featured_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFBFBFD),
                          Color(0xFFF0F1F6),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFDFDFE),
                          Color(0xFFF3F4F8),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 29,
              ),
              child: ListView(
                children: [
                  // NOTE : HEADER
                  Container(
                    margin: EdgeInsets.only(
                      top: 29,
                      left: edgeLeft,
                      right: 11,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Moviez',
                                style: purpleBlueHeaderTextStyle.copyWith(
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Watch much easier',
                                style: greyColorTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, 
                              MaterialPageRoute(
                                builder: (context) => SearchPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            child: Icon(
                              Icons.search,
                              size: 32,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // NOTE : FEATURED
                    padding: EdgeInsets.only(
                      top: 30,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24,
                          ),
                          FeaturedCard(
                            Featured(
                                id: 1,
                                name: 'John Wick 4',
                                category: 'Action, Crime',
                                rating: 5,
                                imageUrl: 'assets/images/header1.png',
                                color: Color(0xFF5E38E5)),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          FeaturedCard(
                            Featured(
                                id: 2,
                                name: 'Bohemian',
                                category: 'Documentary',
                                rating: 3,
                                imageUrl: 'assets/images/header2.png',
                                color: Color(0xFFFE7B02)),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // NOTE : FROM DISNEY
                  Padding(
                    padding: EdgeInsets.only(
                      left: edgeLeft,
                    ),
                    child: Text(
                      'From Disney',
                      style: purpleBlueHeaderTextStyle.copyWith(
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: edgeLeft,
                    ),
                    child: Column(
                      children: [
                        DisneyCard(
                          Disney(
                            id: 1,
                            name: 'Mulan Session',
                            category: 'History, War',
                            imageUrl: 'assets/images/movie1.png',
                            rating: 3,
                            color: Color(0xFF169E9F),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        DisneyCard(
                          Disney(
                            id: 2,
                            name: 'Beauty & Beast',
                            category: 'Sci-Fiction',
                            imageUrl: 'assets/images/movie2.png',
                            rating: 5,
                            color: Color(0xFF174459),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 43,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
