import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingMealsIndex extends StatefulWidget {
  const LoadingMealsIndex({Key? key}) : super(key: key);

  @override
  State<LoadingMealsIndex> createState() => _LoadingMealsIndexState();
}

class _LoadingMealsIndexState extends State<LoadingMealsIndex> {

  void getMealsData() async {

    List meals;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/meals_calories";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    meals = userData;
    // print(trainings);
    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/meals', arguments: {
      'meals': meals,
    });
  }

  @override
  void initState(){
    super.initState();
    getMealsData();
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

