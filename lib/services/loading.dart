import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class LoadingHome extends StatefulWidget {
  const LoadingHome({Key? key}) : super(key: key);

  @override
  State<LoadingHome> createState() => _LoadingHomeState();
}

class _LoadingHomeState extends State<LoadingHome> {

  void setupWorldTime() async {

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/home";
    Response response = await get(Uri.parse(url));

    var rb=response.body;
    /*print(rb);*/
    var userData=json.decode(rb);
    var goToSleep;
    var wakingUp;
    var today_training;
    int dayId;

    dayId = userData[2]['day_id'];
    if(userData[2].length == 0){
      goToSleep = 'Enter your schedule';
      wakingUp = 'receive notif';
    } else {
      goToSleep = userData[2]['go_to_sleep'];
      wakingUp = userData[2]['waking_up'];
     /* Changement du format de la date XX:XX:XX en XXhXX pour un affichage propre */
      goToSleep = goToSleep.substring(0, 2) + "h" + goToSleep.substring(3);
      if (goToSleep != null && goToSleep.length > 0) {
        goToSleep = goToSleep.substring(0, goToSleep.length - 3);
      }
      wakingUp = wakingUp.substring(0, 2) + "h" + wakingUp.substring(3);
      if (wakingUp != null && wakingUp.length > 0) {
        wakingUp = wakingUp.substring(0, wakingUp.length - 3);
      }
    }

    if(userData[3] != null){
      today_training = userData[3]['title'];
    } else {
      today_training = 'Set a training for today';
    }
    DateTime lastmeasured = DateTime.parse(userData[1]['created_at']);
    var weightMesuredAt = DateFormat.yMMMMd().format(lastmeasured);


    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'name': userData[0]['name'],
      'current_weight': userData[0]['current_weight'],
      'goal_weight': userData[0]['goal_weight'],
      'last_measured_weight': weightMesuredAt,
      'go_to_sleep': goToSleep,
      'waking_up': wakingUp,
      'today_training': today_training,
      'today_calories': userData[4],
      'day_id': dayId,
    });
  }

  @override
  void initState(){
    super.initState();
    setupWorldTime();
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
