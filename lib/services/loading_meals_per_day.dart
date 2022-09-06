import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingMealsPerDay extends StatefulWidget {
  const LoadingMealsPerDay({Key? key}) : super(key: key);

  @override
  State<LoadingMealsPerDay> createState() => _LoadingMealsPerDayState();
}

class _LoadingMealsPerDayState extends State<LoadingMealsPerDay> {

  Map data = {};
  @override

  void getMealsDayData() async {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/meals_calories/${data['day_id']}";
    List meals;

    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    meals = userData;
    // print(trainings);
    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/daily_meals', arguments: {
      'meals': meals,
    });
  }

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration.zero, () {
      getMealsDayData();
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
