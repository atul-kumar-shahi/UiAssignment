
import 'package:flutter/material.dart';
import 'package:uiproject/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key, Key? key});

  @override
  Widget build(BuildContext context) {
    void onMenu() {
      print('menu');
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: Colors.transparent,
            elevation: 0,
            pinned: true,
            title: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  child: const Text('Menu'),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: const Border(),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  ontap: () {},
                  text: 'Call Us',
                  icon: Icons.call_outlined,
                  backgroundColor: const Color.fromARGB(255, 13, 86, 96),
                  foregroundColor: Colors.white,
                )
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/1st.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 30, // Adjust this value as needed
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 145, 128, 253),
                                    Color.fromARGB(255, 87, 66, 225)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text('Know More'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/2nd.jpeg',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 30,
                        left: 20,
                        child: Container(
                          height: 150,
                          width: 250,
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 131, 122, 110)
                                .withOpacity(0.8),
                          ),
                          child: CarouselSlider(
                            items: const [
                              Column(
                                children: [
                                  Text(
                                    '"No one can complain about the lack of a friend, being able to have a pet" ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white70,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Marquis of Marica',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white70),
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                            ],
                            options: CarouselOptions(
                                autoPlay: true,
                                enlargeCenterPage: true,
                                animateToClosest: false,
                                viewportFraction: 1,

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
