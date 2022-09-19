import 'package:bwa_challage/models/search.dart';
import 'package:bwa_challage/theme.dart';
import 'package:bwa_challage/widgets/search_card.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({ Key? key }) : super(key: key);

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
                      color: Color(0xFFFBFBFD),
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
                          Color(0xFFFBFBFD),
                          Color(0xFFF0F1F6),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 38,
                    left: edgeLeft,
                    right: edgeLeft,
                  ),
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          child: Icon(
                            Icons.search,
                            size: 32,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: purpleBluePrimaryTextStyle.copyWith(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search',
                              hintStyle: purpleBluePrimaryTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edgeLeft,),
                  child: Text(
                    'Search Result (3)',
                    style: purpleBlueTitleTextStyle.copyWith(
                      fontSize: 20,
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
                      SearchCard(
                        Search(
                          id: 1, 
                          name: 'The Dark II', 
                          category: 'Horror', 
                          imageUrl: 'assets/images/movie3.png', 
                          rating: 4, 
                          color: Color(0xFF169E9F),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SearchCard(
                        Search(
                          id: 2, 
                          name: 'The Dark Knight', 
                          category: 'Heroes', 
                          imageUrl: 'assets/images/movie4.png', 
                          rating: 5, 
                          color: Color(0xFF0C76D3),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SearchCard(
                        Search(
                          id: 3, 
                          name: 'The Dark Tower', 
                          category: 'Action', 
                          imageUrl: 'assets/images/movie5.png', 
                          rating: 4, 
                          color: Color(0xFF394144),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 73,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35, left: 99),
                      width: 178,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37,),
                        color: Color(0xFFC4C8D7),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFC4C8D7),
                            blurRadius: 20,
                            offset: Offset(0, 9),
                          )
                        ]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 77, right: 77),
                      child: Container(
                        width: 220,
                        height: 60,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: purpleBlueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(37)
                            )
                          ),
                          child: Text(
                            'Suggest Movie',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}