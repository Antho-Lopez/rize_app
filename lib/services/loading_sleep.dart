import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingSleep extends StatefulWidget {
  const LoadingSleep({Key? key}) : super(key: key);

  @override
  State<LoadingSleep> createState() => _LoadingSleepState();
}

class _LoadingSleepState extends State<LoadingSleep> {

  void getSleepData() async {

    List sleepSchedule;
    int count = 0;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/user/1/sleeps";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);
    sleepSchedule = userData;

    // print(sleepSchedule);
    for (var schedule in sleepSchedule) {
      // print(schedule['go_to_sleep']);
      schedule['go_to_sleep'] = schedule['go_to_sleep'].substring(0, 2) + "h" + schedule['go_to_sleep'].substring(3);
      schedule['go_to_sleep'] =  schedule['go_to_sleep'].substring(0,  schedule['go_to_sleep'].length - 3);
      schedule['waking_up'] = schedule['waking_up'].substring(0, 2) + "h" + schedule['waking_up'].substring(3);
      schedule['waking_up'] =  schedule['waking_up'].substring(0, schedule['waking_up'].length - 3);

      sleepSchedule[count]['go_to_sleep'] = schedule['go_to_sleep'];
      sleepSchedule[count]['waking_up'] = schedule['waking_up'];
      switch(schedule['day_id']){
        case 1:
          sleepSchedule[count]['day_sleep'] = 'Monday';
          break;
        case 2:
          sleepSchedule[count]['day_sleep'] = 'Tuesday';
          break;
        case 3:
          sleepSchedule[count]['day_sleep'] = 'Wednesday';
          break;
        case 4:
          sleepSchedule[count]['day_sleep'] = 'Thursday';
          break;
        case 5:
          sleepSchedule[count]['day_sleep'] = 'Friday';
          break;
        case 6:
          sleepSchedule[count]['day_sleep'] = 'Saturday';
          break;
        case 7:
          sleepSchedule[count]['day_sleep'] = 'Sunday';
          break;
      }
      count++;
    }
    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/sleepings', arguments: {
      'sleep_schedule': sleepSchedule,
    });
  }

  @override
  void initState(){
    super.initState();
    getSleepData();
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
