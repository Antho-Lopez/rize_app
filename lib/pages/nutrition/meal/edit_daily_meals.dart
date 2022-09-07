import 'package:flutter/material.dart';
import '../../../services/api.dart';
import 'dart:convert';


class EditDailyMeals extends StatefulWidget {
  const EditDailyMeals({Key? key}) : super(key: key);

  @override
  State<EditDailyMeals> createState() => _EditDailyMealsState();
}

class _EditDailyMealsState extends State<EditDailyMeals> {

  Map data = {};

  _updateDailyMeals() async {

    List added_meals = [];
    List removed_meals = [];
    int count = 0;
    int day_id = data['day_id'];

    for(var other_meal in data['all_other_meals']){
      if(other_meal['is_checked'] == true){
        added_meals.add(other_meal['id']);
      }
    }

    for(var set_meals in data['set_meals']){
      if(set_meals['is_checked'] == false){
        removed_meals.add(set_meals['id']);
      }
    }

    var dailyMealsData= {
      'added_meals': added_meals,
      'removed_meals': removed_meals,
      'day_id': day_id,
    };
    print(dailyMealsData);

    var res = await CallDailyMealsUpdateApi().postDailyMealsData(dailyMealsData);
    // var body = json.decode(res.body);
    // print(body);

    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

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
                        itemCount: data['set_meals'].length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                            child: Card(
                              child: CheckboxListTile(
                                shape: const Border(
                                  bottom: BorderSide(
                                      color: Colors.white
                                  ),
                                ),
                                tileColor: const Color(bgBlack),
                                title: Text(
                                  data['set_meals'][index]['name'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                                subtitle: Text(
                                  '${data['set_meals'][index]['kcal']} kcal',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                                value: data['set_meals'][index]['is_checked'],
                                onChanged: (bool? value) {
                                  setState(() {
                                    data['set_meals'][index]['is_checked'] = value!;
                                  });
                                },
                              ),
                            ),
                          );
                        }
                    ),

                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: data['all_other_meals'].length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                            child: Card(
                              child: CheckboxListTile(
                                shape: const Border(
                                  bottom: BorderSide(
                                      color: Colors.white
                                  ),
                                ),
                                tileColor: const Color(bgBlack),
                                title: Text(
                                  data['all_other_meals'][index]['name'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                                subtitle: Text(
                                  '${data['all_other_meals'][index]['kcal']} kcal',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                                value: data['all_other_meals'][index]['is_checked'],
                                onChanged: (bool? value) {
                                  setState(() {
                                    data['all_other_meals'][index]['is_checked'] = value!;
                                  });
                                },
                              ),
                            ),
                          );
                        }
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
                              ),
                              onPressed:() {
                                _updateDailyMeals();
                              },
                              child: Card(
                                color: const Color(myGreen),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Validate',
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
