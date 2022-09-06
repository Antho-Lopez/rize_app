import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingNutritions extends StatefulWidget {
  const LoadingNutritions({Key? key}) : super(key: key);

  @override
  State<LoadingNutritions> createState() => _LoadingNutritionsState();
}

class _LoadingNutritionsState extends State<LoadingNutritions> {

  void getNutritionsData() async {

    List nutritions = [];
    int count = 0;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/weekly_calories";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);

    nutritions.add(userData[0]["1"]);
    nutritions.add(userData[0]["2"]);
    nutritions.add(userData[0]["3"]);
    nutritions.add(userData[0]["4"]);
    nutritions.add(userData[0]["5"]);
    nutritions.add(userData[0]["6"]);
    nutritions.add(userData[0]["7"]);

    for(var nutrition in nutritions){
      if(nutrition == null){
        nutritions[count] = 0;
      }
      count++;
    }

    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/nutritions', arguments: {
      'nutritions': nutritions,
      'daily_kcal_goal': userData[1],
      'protein_per_day': userData[2],
      'glucose_per_day': userData[3],
      'lipid_per_day': userData[4],
    });
  }

  @override
  void initState(){
    super.initState();
    getNutritionsData();
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
