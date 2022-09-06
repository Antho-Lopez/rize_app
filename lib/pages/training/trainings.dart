import 'package:flutter/material.dart';

class Trainings extends StatefulWidget {
  const Trainings({Key? key}) : super(key: key);

  @override
  State<Trainings> createState() => _TrainingsState();
}

class _TrainingsState extends State<Trainings> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    const bgBlack = 0xff1C1C1C;
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
                            'Your trainings',
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
                                  title: Text('Start add or edit a training !',
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
                        itemCount: data['trainings'].length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                            child: Card(
                              child: ListTile(
                                onTap:() {
                                  Navigator.pushReplacementNamed(context, '/loading_training_show', arguments: {
                                    'id': data['trainings'][index]['id'],
                                  });
                                },
                                shape: const Border(
                                  bottom: BorderSide(
                                    color: Color(myBlue),
                                    width: 3,
                                  ),
                                  top: BorderSide(
                                    color: Color(myBlue),
                                    width: 3,
                                  ),
                                  left: BorderSide(
                                    color: Color(myBlue),
                                    width: 3,
                                  ),
                                  right: BorderSide(
                                    color: Color(myBlue),
                                    width: 3,
                                  ),
                                ),
                                tileColor: const Color(triangleGrey),
                                title: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
                                    child: Text(
                                      data['trainings'][index]['title'],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontFamily: 'AgrandirHeavy',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
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
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(myBlue)
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
