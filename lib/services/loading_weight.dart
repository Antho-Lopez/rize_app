import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class LoadingWeight extends StatefulWidget {
  const LoadingWeight({Key? key}) : super(key: key);

  @override
  State<LoadingWeight> createState() => _LoadingWeightState();
}

class _LoadingWeightState extends State<LoadingWeight> {

  void getWeightData() async {

    List oldWeightValues;
    int count = 0;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/weight";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    /*print(userData[1]);*/
    DateTime lastmeasured = DateTime.parse(userData[1][0]['created_at']);
    var weightMesuredAt = DateFormat.yMMMMd().format(lastmeasured);

    oldWeightValues = userData[1];

    for (var oldWeightValue in oldWeightValues) {
      DateTime changeFormat = DateTime.parse(oldWeightValue['created_at']);
      var a = DateFormat.yMMMMd().format(changeFormat);
      oldWeightValues[count]['created_at'] = a;
      count++;
    }

    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/weight', arguments: {
      'current_weight': userData[0]['current_weight'],
      'goal_weight': userData[0]['goal_weight'],
      'last_measured_weight': weightMesuredAt,
      'old_weights': oldWeightValues,
    });
  }

  @override
  void initState(){
    super.initState();
    getWeightData();
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
