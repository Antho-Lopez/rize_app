import 'package:flutter/material.dart';

class Trainings extends StatefulWidget {
  const Trainings({Key? key}) : super(key: key);

  @override
  State<Trainings> createState() => _TrainingsState();
}

class _TrainingsState extends State<Trainings> {
  @override
  Widget build(BuildContext context) {

    const myBlue = 0xff145675;
    const triangleGrey = 0xff444444;

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
                            'Your training',
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
                              color: Color(myBlue),
                              elevation: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 0),
                                child: ListTile(
                                  title: Text('Start training',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirHeavy',
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
                            'Your training',
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
                    const SizedBox(height: 2),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                        color: Color(myBlue),
                                        width: 2,
                                      )
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/training_show');
                              },
                              child: Card(
                                color: const Color(triangleGrey),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Chest & Triceps',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirHeavy',
                                        ),
                                      ),
                                      Text('Monday',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirLight',
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
                    const SizedBox(height: 2),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                        color: Color(myBlue),
                                        width: 2,
                                      )
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/training_show');
                              },
                              child: Card(
                                color: const Color(triangleGrey),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Back & Biceps',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirHeavy',
                                        ),
                                      ),
                                      Text('Tuesday',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirLight',
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
                    const SizedBox(height: 2),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                        color: Color(myBlue),
                                        width: 2,
                                      )
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/training_show');
                              },
                              child: Card(
                                color: const Color(triangleGrey),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Shoulder & Legs',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirHeavy',
                                        ),
                                      ),
                                      Text('Wednesday - Saturday',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirLight',
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
                    const SizedBox(height: 2),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                        color: Color(myBlue),
                                        width: 2,
                                      )
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/training_show');
                              },
                              child: Card(
                                color: const Color(triangleGrey),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Abdos',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirHeavy',
                                        ),
                                      ),
                                      Text('Friday',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirLight',
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
                    const SizedBox(height: 2),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                        color: Color(myBlue),
                                        width: 2,
                                      )
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/weight');
                              },
                              child: const Card(
                                color: Color(myBlue),
                                elevation: 0,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60)
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
                      color: const Color(myBlue),
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
