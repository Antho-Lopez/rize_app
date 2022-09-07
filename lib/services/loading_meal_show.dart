import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingMealShow extends StatefulWidget {
  const LoadingMealShow({Key? key}) : super(key: key);

  @override
  State<LoadingMealShow> createState() => _LoadingMealShowState();
}

class _LoadingMealShowState extends State<LoadingMealShow> {


  Map data = {};
  @override

  void getMealShowData() async {

    List meal;
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

    String url="https://blooming-wildwood-76740.herokuapp.com/api/meal/${data['meal_id']}/show";
    Response response = await get(Uri.parse(url));
    var rb=response.body;
    var userData=json.decode(rb);

    // APRES LA RECUPERATION DES DATAS ON LES PASSES EN PARAMS DANS LA ROUTE GRACE A arguments SOUS FORME DE MAP
    Navigator.pushReplacementNamed(context, '/meal_show', arguments: {
      'name': userData['name'],
      'id': userData['id'],
      'ingredients': userData['ingredients'],
    });
  }

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration.zero, () {
      getMealShowData();
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
