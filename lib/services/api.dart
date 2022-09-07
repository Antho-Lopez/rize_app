import 'package:http/http.dart' as http;
import 'dart:convert';

class CallWeightUpdateApi{

  final String url ="https://blooming-wildwood-76740.herokuapp.com/api/user/1/update_weight";

  postData(weightData) async{

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(weightData),
      headers: _setHeaders(),
    );
  }

  _setHeaders()=>{
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
}

class CallSleepScheduleUpdateApi{

  final String url ="https://blooming-wildwood-76740.herokuapp.com/api/user/1/update_sleep";

  postScheduleData(scheduleData) async{

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(scheduleData),
      headers: _setHeaders(),
    );
  }
  _setHeaders()=>{
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
}

class CallDailyMealsUpdateApi{

  // final String url ="https://blooming-wildwood-76740.herokuapp.com/api/user/1/day/3/update";
  postDailyMealsData(dailyMealsData) async{

    return await http.post(
      Uri.parse("https://blooming-wildwood-76740.herokuapp.com/api/user/1/day/${dailyMealsData['day_id']}/update"),
      body: jsonEncode(dailyMealsData),
      headers: _setHeaders(),
    );
  }

  _setHeaders()=>{
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
}