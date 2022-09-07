import 'package:flutter/material.dart';

class SessionsIndex extends StatefulWidget {
  const SessionsIndex({Key? key}) : super(key: key);

  @override
  State<SessionsIndex> createState() => _SessionsIndexState();
}

class _SessionsIndexState extends State<SessionsIndex> {
  @override
  Widget build(BuildContext context) {
    const myBlue = 0xff145675;
    const myGreen = 0xff0E604F;
    const triangleGrey = 0xff444444;
    // set bg
    String bgImage = 'triangle_bg.png';

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            }),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ListView(
          children: [
            SafeArea(child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/triangle_bg.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text(
                            'Chest & Triceps',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          child: Text(
                            'History',
                            style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 2.0, color: Colors.white),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '10/07/2022',
                                    style: TextStyle(
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirRegular',
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){},
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirRegular',
                                      ),
                                    ), child: const Text( 'Details'),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 2.0, color: Colors.white),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '17/07/2022',
                                    style: TextStyle(
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirRegular',
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){},
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirRegular',
                                      ),
                                    ), child: const Text( 'Details'),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: 2.0, color: Colors.white),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '25/07/2022',
                                    style: TextStyle(
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirRegular',
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){},
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirRegular',
                                      ),
                                    ), child: const Text( 'Details'),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(myBlue)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/');
                              },
                              child: Card(
                                color: const Color(myBlue),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Load more',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirRegular',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 1.0)),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.emoji_food_beverage),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/loading_nutritions');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.directions_run),
                    iconSize: 30,
                    color: const Color(myBlue),
                    onPressed: () {Navigator.pushNamed(context, '/trainings_loading');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.bed),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/sleep_loading');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_horiz),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/see_more');},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white12,
    );
  }
}
