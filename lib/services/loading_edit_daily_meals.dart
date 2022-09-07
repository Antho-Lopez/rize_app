import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingEditDailyMeals extends StatefulWidget {
  const LoadingEditDailyMeals({Key? key}) : super(key: key);

  @override
  State<LoadingEditDailyMeals> createState() => _LoadingEditDailyMealsState();
}

class _LoadingEditDailyMealsState extends State<LoadingEditDailyMeals> {

  Map data = {};
  @override

  void getEditMealsDayData() async {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/day/${data['day_id']}/edit";
    List set_meals;
    List all_others_meals;
    int count_checked = 0;
    int count_not_checked = 0;

    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    set_meals = userData[0];
    all_others_meals = userData[1];

    for(var is_check in set_meals){

      set_meals[count_checked]['is_checked'] = true;
      count_checked++;
    }

    for(var is_not_check in all_others_meals){
      all_others_meals[count_not_checked]['is_checked'] = false;
      count_not_checked++;
    }
    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/edit_daily_meals', arguments: {
      'set_meals': set_meals,
      'all_other_meals': all_others_meals,
      'day_id': data['day_id'],
    });
  }

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration.zero, () {
      getEditMealsDayData();
    });

  }

  @override
  Widget build(BuildContext context) {

    const myYellow = 0xffF1FF46;
    const myGreen = 0xff0E604F;

    return const Scaffold(
        backgroundColor: Color(myGreen),
        body: Center(
          child: SpinKitChasingDots(
            color: Color(myYellow),
            size: 100.0,
          ),
        )
    );
  }
}
