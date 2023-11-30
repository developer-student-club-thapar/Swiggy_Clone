// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiggy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Swiggy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(children: [
        Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.orange,
                        size: 28,
                      ),
                      Text(
                        'College',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Hostel J, Thapar University , Adarsh Nagar , Maharaja..',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyAccount()));
                    },
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(43, 158, 158, 158),
                    // fillColor: Colors.grey,
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search for restaurants and food',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          // Expanded(
          // child:
          Row(
            children: [
              SizedBox(
                height: 0.462 * screenw,
                width: screenw,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                        // padding: EdgeInsets.all(8),
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset('assets/images/banner1.jpg')),
                          SizedBox(
                            width: 10,
                          )
                        ]);
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          // )
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Top Rated for you',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 0.532 * screenw,
                width: screenw,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                        // padding: EdgeInsets.all(8),
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: screenw / 3,
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child:
                                        Image.asset('assets/images/food1.jpg')),
                                Text(
                                  'Boston & Co.',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.stars_rounded,
                                      color:
                                          const Color.fromARGB(255, 33, 86, 35),
                                    ),
                                    Text(
                                      '4.3 . 36 mins',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Pizza , Burgers , Past.')
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ]);
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          // )
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Navdeep Whats on Your Mind?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: screenw,
                height: 0.7 * screenw,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,

                  // Generate 100 widgets that display theirr index in the List.
                  children: List.generate(19, (index) {
                    return Center(
                      child: Container(
                        height: 0.3 * screenw,
                        child: Column(
                          children: [
                            Container(
                              width: 0.2 * screenw,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset('assets/images/pf.jpg')),
                            ),
                            Text(
                              'Burger',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 113, 113, 113),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          // )
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Quick Picks For You',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: screenw,
                height: screenw,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,

                  // Generate 100 widgets that display theirr index in the List.
                  children: List.generate(19, (index) {
                    return Center(
                      child: Container(
                        width: 0.3 * screenw,
                        height: 0.5 * screenw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // width: 0.2 * screenw,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child:
                                      Image.asset('assets/images/food4.jpg')),
                            ),
                            Text(
                              'Yo!china',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 113, 113, 113),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.stars_rounded,
                                  color: const Color.fromARGB(255, 33, 86, 35),
                                ),
                                Text(
                                  '4.3 . 36 mins',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text('Pizza')
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          // )
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Top Rated for you',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
              children: List.generate(
            19,
            (index) {
              return Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        // width: 0.3 * screenw,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                                child: Image.asset(
                              'assets/images/food3.jpg',
                              width: 0.45 * screenw,
                            ))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subway',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.stars_rounded,
                                color: const Color.fromARGB(255, 33, 86, 35),
                              ),
                              Text(
                                '4.3 . 36 mins',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text('Healthy Food,Salads ,Snac...'),
                          Text('Bhupendra Road . 4.2Km'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  )
                ],
              );
            },
          ))
        ]),
      ]),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: List.generate(5, (index) {
              return Container(
                height: 100,
                // decoration: BoxDecoration(
                //     border: Border(
                //         bottom: BorderSide(width: 1.0, color: Colors.black))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'My Account',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            Text('Favourites,Hidden restaurants & Settings')
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_forward_ios_outlined),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    Divider(
                        height: 40,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black),
                  ],
                ),
              );
            }),
          ),
          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.bottomLeft,
            color: Colors.grey,
            child: Text(
              'Past Orders',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jaggi Sweets',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Patiala',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Text('239 Rs'),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      )
                    ],
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivered'),
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jalebi(1)'),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
