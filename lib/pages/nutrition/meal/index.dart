import 'package:flutter/material.dart';

class MealIndex extends StatefulWidget {
  const MealIndex({Key? key}) : super(key: key);

  @override
  State<MealIndex> createState() => _MealIndexState();
}

class _MealIndexState extends State<MealIndex> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    print(data);
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
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                            child: Card(
                              color: Color(myGreen),
                              elevation: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                                child: ListTile(
                                  leading: Image(
                                    image : AssetImage('assets/canneberge.png'),
                                    width: 50,
                                  ),
                                  title: Text(
                                    'Your meals',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 26,
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
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Flexible(
                            child: Text(
                              'All your meals',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 2,
                                color: Colors.white,
                                fontFamily: 'AgrandirHeavy',
                              ),
                            ),
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
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(myGreen)),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/weight');
                              },
                              child: const Card(
                                color: Color(myGreen),
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
