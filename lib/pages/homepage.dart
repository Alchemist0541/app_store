// ignore_for_file: no_logic_in_create_state
import 'dart:ui' as ui;
import 'package:app_store/widgets/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/card.dart';
import '../widgets/list_card_desk.dart';

class HomePage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final _notification_colors = Colors.red;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 142, 210, 255),
              Color.fromARGB(255, 68, 171, 255),
            ],
          )),
        )),
        Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset('lib/assets/svg/Ellipse 1.svg')),
        Positioned(
            right: 0, child: SvgPicture.asset('lib/assets/svg/Ellipse 2.svg')),
        Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset('lib/assets/svg/Ellipse 3.svg')),
        BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 30.0,
            sigmaY: 30.0,
          ),

          //елементи
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset('lib/assets/svg/meu.svg',
                              height: 25)),
                      GestureDetector(
                        onTap: () {},
                        child: Stack(children: [
                          SvgPicture.asset(
                            'lib/assets/svg/bell.svg',
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 2),
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: _notification_colors),
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                //заголовок
                const Padding(
                  padding: EdgeInsets.only(top: 13.0),
                  child: Text(
                    'Browse games',
                    style: TextStyle(fontSize: 28, fontFamily: 'Poppins'),
                  ),
                ),

                //категорії

                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Category(checked: true, text: 'Actions'),
                      Category(checked: false, text: 'Family'),
                      Category(checked: false, text: 'Puzzle'),
                      Category(checked: false, text: 'Adventure'),
                      Category(checked: false, text: 'Horrors'),
                      Category(checked: false, text: 'Coop'),
                    ],
                  ),
                ),

                // ігри

                const Padding(
                  padding: EdgeInsets.only(top: 13.0),
                  child: Text(
                    'Featured games',
                    style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
                  ),
                ),

                //список ігр

                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        MyCard(
                            banerText: 'The Last ',
                            image: 'lib/assets/image/Poster.png'),
                        MyCard(
                            banerText: 'Survival ',
                            image: 'lib/assets/image/Poster2.png'),
                        MyCard(
                          banerText: 'Litle Nightmars ',
                          image: 'lib/assets/image/Poster3.jpg',
                        ),
                        MyCard(
                            banerText: 'Hollow Knight ',
                            image: 'lib/assets/image/Poster4.jpg'),
                        MyCard(
                            banerText: 'The Last ',
                            image: 'lib/assets/image/Poster2.png'),
                        MyCard(
                            banerText: 'The Last ',
                            image: 'lib/assets/image/Poster2.png'),
                        MyCard(
                            banerText: 'The Last ',
                            image: 'lib/assets/image/Poster2.png'),
                        MyCard(
                            banerText: 'The Last ',
                            image: 'lib/assets/image/Poster2.png'),
                      ],
                    ),
                  ),
                ),

                // ігри

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    children: [
                      Text(
                        'Top Action Games',
                        style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
                      ),
                      Spacer(),
                      InkWell(
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    

                    scrollDirection: Axis.vertical,
                    children:  const [
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                      ListCardDesk(image: 'lib/assets/image/Poster4.jpg', text: 'Survivor', rate: '5',),
                    
                    ],
                  ),
                ),
              ],
            ),
          )),
        )
      ]),
    );
  }
}
