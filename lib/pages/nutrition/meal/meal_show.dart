import 'package:flutter/material.dart';

class MealShow extends StatefulWidget {
  const MealShow({Key? key}) : super(key: key);

  @override
  State<MealShow> createState() => _MealShowState();
}

class _MealShowState extends State<MealShow> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    const myGreen = 0xff0E604F;
    const triangleGrey = 0xff444444;
    const bgBlack = 0xff1C1C1C;

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
                            'Details of your meal',
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
                              color: const Color(myGreen),
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 0),
                                child: ListTile(
                                  title: Text(data['name'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
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
                        itemCount: data['ingredients'].length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: ListTile(
                                      tileColor: const Color(bgBlack),
                                      title: Text(
                                        '${data['ingredients'][index]['portion']}g ${data['ingredients'][index]['name']}',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirRegular',
                                        ),
                                      ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.delete_forever),
                                        iconSize: 24,
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    shape: const Border(

                                      top: BorderSide(
                                          color: Colors.white
                                      ),
                                    ),
                                    tileColor: const Color(bgBlack),
                                    title: Text(
                                      '${data['ingredients'][index]['calories']} Calories  / ${data['ingredients'][index]['proteins']}g Proteins',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirRegular',
                                      ),
                                    ),
                                    subtitle: Text(
                                      '${data['ingredients'][index]['glucides']}g Glucose  / ${data['ingredients'][index]['lipids']}g Lipids',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirRegular',
                                      ),
                                    ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.edit_sharp),
                                        iconSize: 24,
                                        color: Colors.white,
                                        onPressed: () {},
                                      )
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                    const SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(myGreen)),
                                ),
                                onPressed:() {

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
                    ),
                    const SizedBox(height: 60),
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
