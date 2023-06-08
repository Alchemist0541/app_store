import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final image;
  // ignore: prefer_typing_uninitialized_variables
  final banerText;

  const MyCard({super.key, this.banerText, required this.image});

  @override
  Widget build(BuildContext context) {
    bool favcheck = false;

    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fitWidth),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white38),
                    child: IconButton(
                        onPressed: () {
                          favcheck = !favcheck;
                        },
                        icon: Icon(
                          Icons.favorite,
                          size: 35,
                          // ignore: dead_code
                          color: favcheck ? Colors.red : Colors.white,
                        )),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      RatingBar.builder(
                        itemSize: 24,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // print(rating);
                        },
                      ),
                      Text(
                        banerText,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('lib/assets/svg/download.svg'),
                          const Padding(
                            padding: EdgeInsets.only(left:8.0),
                            child: Text(
                                                  '20k Download',
                                                  style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              color: Colors.white),
                                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
