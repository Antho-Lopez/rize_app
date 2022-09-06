import 'package:flutter/material.dart';

class SessionShow extends StatefulWidget {
  const SessionShow({Key? key}) : super(key: key);

  @override
  State<SessionShow> createState() => _SessionShowState();
}

class _SessionShowState extends State<SessionShow> {
  @override
  Widget build(BuildContext context) {
    const myBlue = 0xff145675;
    const myGreen = 0xff0E604F;
    const myRed = 0xffA32F3D;
    const triangleGrey = 0xff444444;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: // TRAINING
        // NUTRITION
        ListView(
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
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
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
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Exercises',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',),
                          ),
                          IconButton(
                            icon: Icon(Icons.edit_sharp),
                            iconSize: 24,
                            color: Colors.white,
                            onPressed: () {Navigator.pushNamed(context, '/choose_daily_meal');},
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Triceps',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                              child: Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 1.0, color: Colors.white),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Extension poulie corde',
                                          style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 2,
                                            color: Colors.white,
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        ),
                                        Text(
                                          '-6kg lifted',
                                          style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 2,
                                            color: Color(myRed),
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '12(20kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(20kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(18kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(18kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          '420kg lifted',
                                          style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 2,
                                            color: Colors.white,
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                              child: Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 1.0, color: Colors.white),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Développé couché',
                                          style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 2,
                                            color: Colors.white,
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        ),
                                        Text(
                                          '-6kg lifted',
                                          style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 2,
                                            color: Color(myRed),
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '12(20kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(20kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(18kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(18kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          '420kg lifted',
                                          style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 2,
                                            color: Colors.white,
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                              child: Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 1.0, color: Colors.white),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Barre au front',
                                          style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 2,
                                            color: Colors.white,
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        ),
                                        Text(
                                          '+6kg lifted',
                                          style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 2,
                                            color: Color(myGreen),
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '12(20kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(20kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(18kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                            Text(
                                              '12(18kg)',
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          '420kg lifted',
                                          style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 2,
                                            color: Colors.white,
                                            fontFamily: 'AgrandirRegular',
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text(
                            'TOTAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text(
                            '-6Kg lifted',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 2,
                              color: Color(myRed),
                              fontFamily: 'AgrandirHeavy',
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(myRed)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/sessions_index');
                              },
                              child: Card(
                                color: const Color(myRed),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Delete this session',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
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
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
      backgroundColor: Colors.white12,

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
                    color: const Color(myBlue),
                    iconSize: 30,
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
    );
  }
}
