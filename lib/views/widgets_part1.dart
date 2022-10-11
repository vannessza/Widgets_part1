part of 'pages.dart';

class WidgetsPart1 extends StatefulWidget {
  const WidgetsPart1({Key? key}) : super(key: key);
  static const String routeName = '/WidgetsPart1';

  @override
  _WidgetsPart1State createState() => _WidgetsPart1State();
}

class _WidgetsPart1State extends State<WidgetsPart1> {
  bool _isLikeButtonClicked = false;
  List<Widget> widgets = [];

  _WidgetsPart1State() {
    widgets.add(Text(
      "The 4-star Golden Tulip Holland Resort is ideally located in the heart of leisure place in batu, with easy access to family recreational place and entertainments. it offers two food & beverage venues, swimming pools, a spa, afitness center, a kids playground and meeting room facilities which cater up to 2000 person.",
      style: TextStyle(
        fontSize: 16,
      ),
    ));
    widgets.add(Text(
        "\nGolden Tulip Holland Resort offers the kind of facilities and services that make travelling with children a breeze. the hotel is geared towards the needs and requirements of all famillies, big and samll. Our hotel offers various activities for kids, along with a pool/slide.",
        style: TextStyle(fontSize: 16)));
    widgets.add(Text(
        "\nTry our tempting menu of drinks and light meals available 24 hours. When you feel the need of food and beverage, we are ready to serve you. Our business center offers computer use and internet services, photocopying, printing and facsimile.",
        style: TextStyle(fontSize: 16)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 94, 255),
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 79, 164, 233), Colors.white])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            // FloatingActionButton(
            //     onPressed: () {},
            //     backgroundColor: Colors.white,
            //     child: IconButton(
            //       icon: const Icon(Icons.heart_broken_rounded),
            //       color: _isLikeButtonClicked
            //           ? Color.fromARGB(255, 255, 0, 0)
            //           : Color.fromARGB(255, 70, 66, 65),
            //       onPressed: () {
            //         setState(() {
            //           _isLikeButtonClicked = !_isLikeButtonClicked;
            //         });
            //       },
            //     )),
            // Padding(padding: const EdgeInsets.only(bottom: 0.0)),
            // ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //         primary: Colors.white,
            //         alignment: Alignment.topRight,
            //         shape: CircleBorder()),
            //     child: IconButton(
            //       icon: const Icon(Icons.heart_broken_rounded),
            //       color: _isLikeButtonClicked
            //           ? Color.fromARGB(255, 255, 0, 0)
            //           : Color.fromARGB(255, 70, 66, 65),
            //       onPressed: () {
            //         setState(() {
            //           _isLikeButtonClicked = !_isLikeButtonClicked;
            //         });
            //       },
            //     )),
            // Flexible(
            //     child: IconButton(
            //   icon: const Icon(Icons.heart_broken_rounded),
            //   color: _isLikeButtonClicked ? Colors.white : Colors.red,
            //   onPressed: () {
            //     setState(() {
            //       _isLikeButtonClicked = !_isLikeButtonClicked;
            //     });
            //   },
            // )),
            Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  //color: Colors.blueGrey,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          'assets/images/gambar1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.all(8),
                                shape: CircleBorder()),
                            child: IconButton(
                              icon: const Icon(Icons.heart_broken_rounded),
                              iconSize: 25,
                              color: _isLikeButtonClicked
                                  ? Color.fromARGB(255, 255, 0, 0)
                                  : Color.fromARGB(255, 70, 66, 65),
                              onPressed: () {
                                setState(() {
                                  _isLikeButtonClicked = !_isLikeButtonClicked;
                                });
                              },
                            )),
                        // ElevatedButton.icon(
                        //   onPressed: () {
                        //     setState(() {
                        //       _isLikeButtonClicked = !_isLikeButtonClicked;
                        //     });
                        //   },
                        //   icon: Icon(
                        //     Icons.heart_broken,
                        //     color: _isLikeButtonClicked
                        //         ? Color.fromARGB(255, 255, 0, 0)
                        //         : Color.fromARGB(255, 70, 66, 65),
                        //   ),
                        //   label: Text(''),
                        //   style: ElevatedButton.styleFrom(
                        //     shadowColor: Colors.white,
                        //     elevation: 0,
                        //     padding: const EdgeInsets.all(10),
                        //     minimumSize: const Size.fromRadius(12),
                        //     primary: Colors.white,
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(30),
                        //     ),
                        //   ),
                        // ),
                      )
                    ],
                  ),
                )),
            // Flexible(
            //     flex: 2,
            //     child: Container(
            //       width: double.infinity,
            //       height: double.infinity,
            //       decoration: BoxDecoration(
            //           image: DecorationImage(
            //               fit: BoxFit.cover,
            //               image: AssetImage('assets/images/gambar1.png'))),
            //     )),
            Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/gambar2.png"))),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/gambar3.png"))),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/gambar4.png"))),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/gambar5.png"))),
                        ),
                      )
                    ],
                  ),
                )),
            Flexible(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Flexible(
                          flex: 0,
                          child: Container(
                            height: 30,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Welcome to Golden Tulip Holland Batu",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )),
                      Flexible(
                        child: Container(
                            height: 300,
                            child: Stack(
                              children: [
                                ListView(
                                  children: widgets,
                                ),
                                Align(
                                    child: Container(
                                  margin: EdgeInsets.all(5.0),
                                  padding: EdgeInsets.all(5.0),
                                  alignment: Alignment.bottomRight,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, Bookingform.routeName);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient:
                                              const LinearGradient(colors: [
                                            Color.fromARGB(255, 78, 157, 221),
                                            Color.fromARGB(255, 255, 247, 247)
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Book Now',
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                              ],
                            )),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
