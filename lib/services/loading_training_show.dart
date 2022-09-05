import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class LoadingTrainingShow extends StatefulWidget {
  const LoadingTrainingShow({Key? key}) : super(key: key);

  @override
  State<LoadingTrainingShow> createState() => _LoadingTrainingShowState();
}

class _LoadingTrainingShowState extends State<LoadingTrainingShow> {

  Map data = {};
  @override

  void getOneTrainingData() async {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    List lastFourSessions;
    List muscles;
    int count = 0;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/training/${data['id']}/show";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    lastFourSessions = userData[1];
    muscles = userData[0]['muscles'];

    for (var lastFourSession in lastFourSessions) {
      DateTime changeFormat = DateTime.parse(lastFourSession[1]);
      var a = DateFormat.yMMMMd().format(changeFormat);
      lastFourSessions[count][1] = a;
      if(lastFourSession.length == 2){
        lastFourSessions[count].add(0);
      }
      count++;
    }

    for (var muscle in muscles) {

    }
    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/training_show', arguments: {
      'training': userData[0]['title'],
      'lastFourSessions': lastFourSessions,
      'muscles': muscles,
    });

  }

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration.zero, () {
      getOneTrainingData();
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
