import 'package:flutter/material.dart';

class EditDailyMeals extends StatefulWidget {
  const EditDailyMeals({Key? key}) : super(key: key);

  @override
  State<EditDailyMeals> createState() => _EditDailyMealsState();
}

class _EditDailyMealsState extends State<EditDailyMeals> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    const myBlue = 0xff145675;
    const myGreen = 0xff0E604F;
    const bgBlack = 0xff1C1C1C;
    const triangleGrey = 0xff444444;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          child: Text(
                            'Edit today meals',
                            style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: data['old_weights'].length,
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
                                  data['old_weights'][index]['created_at'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                                trailing: Text(
                                  '${data['old_weights'][index]['weight']} kg',
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
      backgroundColor: const Color(bgBlack),
    );
  }
}
