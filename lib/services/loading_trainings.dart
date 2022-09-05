import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingTrainings extends StatefulWidget {
  const LoadingTrainings({Key? key}) : super(key: key);

  @override
  State<LoadingTrainings> createState() => _LoadingTrainingsState();
}

class _LoadingTrainingsState extends State<LoadingTrainings> {

  void getTrainingsData() async {

    List trainings;
    int count = 0;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/trainings";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    trainings = userData;
    // print(trainings);
    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/trainings', arguments: {
      'trainings': trainings,
    });
  }

  @override
  void initState(){
    super.initState();
    getTrainingsData();
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
