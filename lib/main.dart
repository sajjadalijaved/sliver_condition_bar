import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverPersistentHeader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Mountains'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var images = [
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
  ];

  var images1 = [
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
  ];

  var images2 = [
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
    'assets/moon1.jpg',
  ];
  var list = [
    'Introduction to Driving',
    'Observation at Junctions',
    'Reverse Parallel Parking',
    'Reversing Around Corner',
    'Incorrect Use Of Signals',
    'Introduction to Driving',
    'Observation at Junctions',
    'Reverse Parallel Parking',
    'Reversing Around Corner',
    'Incorrect Use Of Signals',
    'Introduction to Driving',
    'Observation at Junctions',
    'Reverse Parallel Parking',
    'Reversing Around Corner',
    'Incorrect Use Of Signals',
    'Introduction to Driving',
    'Observation at Junctions',
    'Reverse Parallel Parking',
    'Reversing Around Corner',
    'Incorrect Use Of Signals',
    'Introduction to Driving',
    'Observation at Junctions',
    'Reverse Parallel Parking',
    'Reversing Around Corner',
    'Incorrect Use Of Signals',
    'Introduction to Driving',
    'Observation at Junctions',
    'Reverse Parallel Parking',
    'Reversing Around Corner',
    'Incorrect Use Of Signals',
    'Introduction to Driving',
    'Observation at Junctions',
    'Reverse Parallel Parking',
    'Reversing Around Corner',
    'Incorrect Use Of Signals'
  ];
  var subtitles = [
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced',
    'Begineer',
    'Begineer',
    'Intermediate',
    'Intermediate',
    'Advanced'
  ];
  var icon = [
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
    Icons.car_repair,
    Icons.panorama_photosphere_select_outlined,
    Icons.pedal_bike_rounded,
    Icons.car_rental_outlined,
    Icons.shopping_basket_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
        bottomNavigationBar: Container(
          color: const Color.fromRGBO(58, 66, 86, 1.0),
          height: 55.0,
          child: BottomAppBar(
            color: const Color.fromRGBO(58, 66, 86, 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.blur_on, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.hotel, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.account_box, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          reverse: false,
          slivers: [
            SliverPersistentHeader(
                pinned: true, floating: true, delegate: App(height: 250)),
            ACustomSliverHeader(
              backgroundColor: Colors.amber.shade700,
              headerTitle: 'Cake',
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 10,
                    margin: const EdgeInsets.all(5),
                    child: Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        )),
                  );
                },
                childCount: images.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                childAspectRatio: 1.0,
              ),
            ),
            const ACustomSliverHeader(
              backgroundColor: Colors.green,
              headerTitle: 'City Buildings',
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(5),
                    elevation: 10,
                    child: Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image(
                          image: AssetImage(images1[index]),
                          fit: BoxFit.cover,
                        )),
                  );
                },
                childCount: images1.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                childAspectRatio: 1.0,
              ),
            ),
            ACustomSliverHeader(
              backgroundColor: Colors.blue.shade900,
              headerTitle: 'Sports',
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(5),
                    elevation: 10,
                    child: Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Image(
                          image: AssetImage(images2[index]),
                          fit: BoxFit.cover,
                        )),
                  );
                },
                childCount: images2.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                childAspectRatio: 1.0,
              ),
            ),
            const ACustomSliverHeader(
              backgroundColor: Colors.pink,
              headerTitle: 'Lessons',
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  elevation: 8.0,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(64, 75, 96, .9)),
                      child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: const EdgeInsets.only(right: 12.0),
                            decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(icon[index], color: Colors.white),
                          ),
                          title: Text(
                            list[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: <Widget>[
                              const Icon(Icons.linear_scale,
                                  color: Colors.yellowAccent),
                              Text(subtitles[index],
                                  style: const TextStyle(color: Colors.white))
                            ],
                          ),
                          trailing: const Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0))),
                );
              },
              childCount: list.length,
            )),
          ],
        ));
  }
}

class ACustomSliverHeader extends StatelessWidget {
  final Color backgroundColor;
  final String headerTitle;

  const ACustomSliverHeader({
    Key? key,
    required this.backgroundColor,
    required this.headerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: Delegate(backgroundColor, headerTitle),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String headerTitle;

  Delegate(this.backgroundColor, this.headerTitle);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 35,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class App extends SliverPersistentHeaderDelegate {
  double height;
  App({required this.height});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Opacity(
          opacity: appear(shrinkOffset),
          child: myapp(),
        ),
        Opacity(
          opacity: disAppear(shrinkOffset),
          child: myimage(),
        )
      ],
    );
  }

  Widget myapp() {
    return AppBar(
      centerTitle: true,
      leading: const Icon(
        Icons.arrow_back_ios_new_sharp,
        color: Colors.black,
      ),
      title: const Text('Mountains'),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ],
    );
  }

  Widget myimage() {
    return Image(
      height: height,
      width: double.infinity,
      image: const AssetImage('assets/moon1.jpg'),
      fit: BoxFit.cover,
    );
  }

  double disAppear(double shrink) {
    return 1 - shrink / height;
  }

  double appear(double shrink) {
    return shrink / height;
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
