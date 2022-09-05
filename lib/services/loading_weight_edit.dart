import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class LoadingWeightEdit extends StatefulWidget {
  const LoadingWeightEdit({Key? key}) : super(key: key);

  @override
  State<LoadingWeightEdit> createState() => _LoadingWeightEditState();
}

class _LoadingWeightEditState extends State<LoadingWeightEdit> {

  void getWeightData() async {
    double current_weight;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/weight";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    current_weight = double.parse('${userData[0]['current_weight']}');
    // print(test);
    DateTime lastmeasured = DateTime.parse(userData[1][0]['created_at']);

    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/weight_edit', arguments: {
      'current_weight': current_weight,
      'last_measured_weight': lastmeasured,
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
