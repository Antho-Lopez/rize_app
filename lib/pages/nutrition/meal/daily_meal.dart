import 'package:flutter/material.dart';

class DailyMeal extends StatefulWidget {
  const DailyMeal({Key? key}) : super(key: key);

  @override
  State<DailyMeal> createState() => _DailyMealState();
}

class _DailyMealState extends State<DailyMeal> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    const myGreen = 0xff0E604F;
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
                    alignment: Alignment.topCenter,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            '${data['day_id']} meals',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Your meals',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',),
                          ),
                          IconButton(
                            icon: const Icon(Icons.edit_sharp),
                            iconSize: 24,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/loading_edit_daily_meals', arguments: {
                                'day_id': data['day_id'],
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: data['meals'].length,
                                itemBuilder: (context, index){
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                                    child: Card(
                                      child: ListTile(
                                        onTap:() {

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
                                        title: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                                            child: Text(
                                              data['meals'][index]['name'],
                                              style: const TextStyle(
                                                fontSize: 16,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirHeavy',
                                              ),
                                            ),
                                          ),
                                        ),
                                        subtitle: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                            child: Text(
                                              '${data['meals'][index]['kcal']} Kcal',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontFamily: 'AgrandirRegular',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
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
