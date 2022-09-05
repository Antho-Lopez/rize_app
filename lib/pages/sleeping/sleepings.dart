import 'package:flutter/material.dart';

class Sleepings extends StatefulWidget {
  const Sleepings({Key? key}) : super(key: key);

  @override
  State<Sleepings> createState() => _SleepingsState();
}

class _SleepingsState extends State<Sleepings> {
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
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: // TRAINING
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
                            'Your sleep schedule',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                            child: Card(
                              color: Color(myGreen),
                              elevation: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 0),
                                child: ListTile(
                                  isThreeLine: true,
                                  title: Text('Tonight\'s sleep schedule',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirHeavy',
                                    ),
                                  ),
                                  subtitle: Text('23h15 - 7h15 (8 hours)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirRegular',
                                    ),
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text(
                            'Weekly sleeping program',
                            style: TextStyle(
                              fontSize: 18,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Monday',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          '   23h15 - 07h15 (8 hours)',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Tuesday',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          '   23h15 - 07h15 (8 hours)',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Wednesday',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          '   23h15 - 07h15 (8 hours)',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Thursday',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          '   23h15 - 07h15 (8 hours)',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Friday',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          '   23h15 - 07h15 (8 hours)',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Saturday',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          '   23h15 - 07h15 (8 hours)',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Sunday',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                        Text(
                          '   23h15 - 07h15 (8 hours)',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2,
                            fontFamily: 'AgrandirRegular',
                            shadows: [
                              Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(triangleGrey)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/weight');
                              },
                              child: Card(
                                color: const Color(triangleGrey),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.notifications_active,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                            child: Column(
                                              children: const [
                                                Text('Allow notifications so we can send',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    letterSpacing: 2,
                                                    color: Colors.white,
                                                    fontFamily: 'AgrandirRegular',
                                                  ),
                                                ),
                                                Text('you a reminder when its time',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    letterSpacing: 2,
                                                    color: Colors.white,
                                                    fontFamily: 'AgrandirRegular',
                                                  ),
                                                ),
                                                Text('for you to sleep.',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    letterSpacing: 2,
                                                    color: Colors.white,
                                                    fontFamily: 'AgrandirRegular',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(myGreen)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/edit_sleeping');
                              },
                              child: Card(
                                color: const Color(myGreen),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Change your sleeping schedule',
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
                    onPressed: () {Navigator.pushNamed(context, '/nutritions');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.directions_run),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/trainings');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.bed),
                    color: const Color(myGreen),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/sleepings');},
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
