import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int? flex;
  var top = 0.0;
  double height = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 250,
              collapsedHeight: 120,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  top = constraints.biggest.height;
                  return top <= 150
                      ? Container(
                          color: Colors.yellow,
                          child: Row(
                            children: [
                              animatedContainer(
                                  flex: 50,
                                  height: 150,
                                  child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg3_OGfFOIpvLoC50YlJFtljkRq7h5xPcuDw&usqp=CAU',
                                      fit: BoxFit.fill)),
                              Expanded(
                                  flex: 50,
                                  child: Container(
                                    height: 150,
                                    color: Colors.grey,
                                    child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv-nsFmniyz8yQSA4egvsANEAVVOMzXA14aA&usqp=CAU',
                                        fit: BoxFit.fitHeight),
                                  ))
                            ],
                          ),
                        )
                      : animatedContainer(
                          flex: 0,
                          height: double.infinity,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg3_OGfFOIpvLoC50YlJFtljkRq7h5xPcuDw&usqp=CAU',
                              fit: BoxFit.cover),
                          width: double.infinity);

                  // return Row(
                  //   children: [
                  //     Container(
                  //       height: constraints.maxHeight,
                  //       color: Colors.red,
                  //       child: Image.network(
                  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdVFn56IkowJ8aUfTDY7cBHK3CjJ_WudhN3Q&usqp=CAU',
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //     top <= 100
                  //         ? AnimatedOpacity(
                  //             duration: const Duration(microseconds: 300),
                  //             opacity: top <= 100 ? 1.0 : 0.0,
                  //             child: const Text('Sliver'))
                  //         : Container(
                  //             height: 0,
                  //             width: 0,
                  //           ),
                  //   ],
                  // );
                },
              )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget animatedContainer(
      {required int flex,
      double? height,
      double? width,
      required Widget child}) {
    return Expanded(
        flex: flex,
        child: AnimatedContainer(
            height: height,
            width: width,
            color: Colors.green,
            duration: const Duration(seconds: 10),
            child: child));
  }
}
