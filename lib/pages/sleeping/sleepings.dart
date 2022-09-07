import 'package:flutter/material.dart';

class Sleepings extends StatefulWidget {
  const Sleepings({Key? key}) : super(key: key);

  @override
  State<Sleepings> createState() => _SleepingsState();
}

class _SleepingsState extends State<Sleepings> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    const myGreen = 0xff0E604F;
    const triangleGrey = 0xff444444;
    const bgBlack = 0xff1C1C1C;
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
                                  title: Text('Change your sleep schedule',
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

                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: data['sleep_schedule'].length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                            child: Card(
                              child: ListTile(
                                shape: const Border(
                                  bottom: BorderSide(
                                      color: Colors.white
                                  ),
                                  top: BorderSide(
                                      color: Color(bgBlack)
                                  ),
                                ),
                                tileColor: const Color(bgBlack),
                                title: Text(
                                  data['sleep_schedule'][index]['day_sleep'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                                trailing: Text(
                                  '${data['sleep_schedule'][index]['go_to_sleep']} - ${data['sleep_schedule'][index]['waking_up']}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
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
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('"RIZE" Would like to send you notifications'),
                                  content: const Text('Notifications may includes alerts, sounds, and icon badges. These can be configured in Settings'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'Don\'t Allow'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              ),
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
                    onPressed: () {Navigator.pushNamed(context, '/loading_nutritions');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.directions_run),
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
                    color: const Color(myGreen),
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
