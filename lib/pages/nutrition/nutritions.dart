import 'package:flutter/material.dart';

class Nutritions extends StatefulWidget {
  const Nutritions({Key? key}) : super(key: key);

  @override
  State<Nutritions> createState() => _NutritionsState();
}

class _NutritionsState extends State<Nutritions> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    List day = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    List iconsMeal = ['canneberge.png', 'figure.png', 'grain-de-raisin.png', 'grenade.png', 'orange.png', 'pasteque.png', 'poire.png'];
    const myGreen = 0xff0E604F;
    const bgblack = 0xff2D2D2D;
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
                            'Your nutrition',
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
                      children: [
                        Flexible(
                            child: Card(
                              color: Color(myGreen),
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 0),
                                child: ListTile(
                                  title: const Text('Recommended',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirHeavy',
                                    ),
                                  ),
                                  isThreeLine: true,
                                  subtitle: Text('${data['daily_kcal_goal']} Kcal / proteins : ${data['protein_per_day']} g'
                                      ' / glucose : ${data['glucose_per_day']} g / lipids : ${data['lipid_per_day']} g',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 18,
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
                            'Your weekly food program',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 20, 8, 4),
                              child: ListTile(
                                onTap:() {
                                  Navigator.pushReplacementNamed(context, '/loading_meals');
                                },
                                tileColor: const Color(myGreen),
                                leading: const Image(
                                    width: 35,
                                    image: AssetImage('assets/banane.png')
                                ),
                                title:
                                const Text(
                                  'Check your meals',
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirHeavy',
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: data['nutritions'].length,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                              child: Card(
                                child: ListTile(
                                  onTap:() {
                                    Navigator.pushReplacementNamed(context, '/loading_meals_per_days', arguments: {
                                      'day_id': index + 1,
                                    });
                                  },
                                  shape: const Border(
                                    bottom: BorderSide(
                                      color: Color(myGreen),
                                      width: 3,
                                    ),
                                    top: BorderSide(
                                      color: Color(myGreen),
                                      width: 3,
                                    ),
                                    left: BorderSide(
                                      color: Color(myGreen),
                                      width: 3,
                                    ),
                                    right: BorderSide(
                                      color: Color(myGreen),
                                      width: 3,
                                    ),
                                  ),
                                  tileColor: const Color(triangleGrey),
                                  leading: Image(
                                      width: 35,
                                      image: AssetImage('assets/${iconsMeal[index]}')
                                  ),
                                  subtitle: Text(
                                    '${day[index]}',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirRegular',
                                    ),
                                  ),
                                  title:
                                    Text(
                                      '${data['nutritions'][index]} Kcal',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirHeavy',
                                        ),
                                    ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    const SizedBox(height: 50),
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
                    color: const Color(myGreen),
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
