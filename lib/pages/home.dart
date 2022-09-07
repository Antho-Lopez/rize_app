import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context)  {

    DateTime date = DateTime.now();
    String dayOfTheWeek = DateFormat('EEEE').format(date);
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    const myBlue = 0xff145675;
    const myGreen = 0xff0E604F;

    return Scaffold(
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
                      children: [
                        Flexible(
                          child: Text(
                            '${'Hello ' + data['name']} welcome back !',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
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
                            'Your current weight',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/weight_loading');
                              },
                              child: Card(
                                color: Colors.transparent,
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(myGreen),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                                  child: ListTile(
                                    onTap: () { Navigator.pushNamed(context, '/weight_loading'); },
                                    title: Text('${data['current_weight']} Kg',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 30,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirHeavy',
                                      ),
                                    ),
                                    subtitle: Text('goal weight : ${data['goal_weight']} Kg',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirLight',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            'Last measured: ${data['last_measured_weight']}',
                            style: const TextStyle(
                              fontSize: 12,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirRegular',
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          child: Text(
                            'Training',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/trainings_loading');},
                            child: Card(
                              color: const Color(myBlue),
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                                child: ListTile(
                                  onTap: () {Navigator.pushNamed(context, '/trainings_loading');},
                                  title: const Text('Start training',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirHeavy',
                                    ),
                                  ),
                                  subtitle: Text('${data['today_training']}',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirLight',
                                    ),
                                  ),
                                ),
                              ),
                            )
                          )
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          child: Text(
                            'Nutrition',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/loading_nutritions');
                              },
                              child: Card(
                                color: const Color(myGreen),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                                  child: ListTile(
                                    onTap: () {Navigator.pushNamed(context, '/loading_nutritions');},
                                    title: const Text('Check your nutrition program',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirHeavy',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)
                              ),
                              onPressed:() {
                                  Navigator.pushNamed(context, '/daily_meals');},
                              child: Card(
                                color: Colors.transparent,
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(myGreen),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                                  child: ListTile(
                                    onTap:() {
                                      /*Navigator.pushReplacementNamed(context, '/loading_meals_per_days', arguments: {
                                        'day_id': data['day_id'],
                                      });*/
                                    },
                                    leading: const Image(
                                        image: AssetImage('assets/grain-de-raisin.png')
                                    ),
                                    title: Text(dayOfTheWeek,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 22,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirHeavy',
                                      ),
                                    ),
                                    subtitle: Text('${data['today_calories']} Kcal',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirLight',
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            )
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          child: Text(
                            'Speeping schedule',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/sleep_loading');
                              },
                              child: Card(
                                color: const Color(myGreen),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                                  child: ListTile(
                                    onTap: () {Navigator.pushNamed(context, '/sleep_loading');},
                                    title: Text('${data['go_to_sleep']} to ${data['waking_up']}',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirHeavy',
                                      ),
                                    ),
                                    subtitle: const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      child: Text('Recommended : 8 hours',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirLight',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
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
                    onPressed: () {Navigator.pushNamed(context, '/trainings_loading');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    color: const Color(myGreen),
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