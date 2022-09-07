import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../../services/api.dart';

class SleepingEdit extends StatefulWidget {
  const SleepingEdit({Key? key}) : super(key: key);

  @override
  State<SleepingEdit> createState() => _SleepingEditState();
}

class _SleepingEditState extends State<SleepingEdit> {


  TimeOfDay timeSleep = TimeOfDay(hour: 22, minute: 30);
  TimeOfDay timeWakingup = TimeOfDay(hour: 07, minute: 30);
  List week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  List isChecked = [false, false, false, false, false, false, false];

  _updateSchedule() async {

    List day_id = [];
    int count = 1;
    String go_to_sleep = '${timeSleep.hour.toString()}:${timeSleep.minute.toString()}';
    String waking_up = '${timeWakingup.hour.toString()}:${timeWakingup.minute.toString()}';

    /*String go_to_sleep = '$sleepHours:$sleepMinutes'*/

    for(var indexChecked in isChecked){
      if(indexChecked == true){
        day_id.add(count);
      }
      count++;
    }
    /*print(day_id);*/

    var scheduleData= {
      'day_id': day_id,
      'go_to_sleep': go_to_sleep,
      'waking_up': waking_up,
    };
    print(scheduleData);

    await CallSleepScheduleUpdateApi().postScheduleData(scheduleData);
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    
    final sleepHours = timeSleep.hour.toString().padLeft(2, '0');
    final sleepMinutes = timeSleep.minute.toString().padLeft(2, '0');
    final WakingupHours = timeWakingup.hour.toString().padLeft(2, '0');
    final WakingupMinutes = timeWakingup.minute.toString().padLeft(2, '0');

    const myGreen = 0xff0E604F;
    const triangleGrey = 0xff444444;
    const bgBlack = 0xff2D2D2D;
    // set bg
    String bgImage = 'triangle_bg.png';

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: // TRAINING
        ListView(
          children: [
            SafeArea(child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/triangle_bg.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text(
                            'Change your sleep schedule',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),

                    const Text(
                      'Go to bed at',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.white,
                        fontFamily: 'AgrandirRegular',
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(myGreen)),
                            textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                              fontSize: 22,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',
                            )
                            )
                          ),
                          onPressed: () async {
                            TimeOfDay? newTime = await showTimePicker(
                                context: context,
                                initialTime: timeSleep,
                            );
                            if (newTime == null) return;
                            setState(() => timeSleep = newTime);
                          },
                          child: Text('$sleepHours:$sleepMinutes'),
                      ),
                    ),

                    const SizedBox(height: 30),
                    const Text(
                      'Waking up at',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.white,
                        fontFamily: 'AgrandirRegular',
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(myGreen)),
                            textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                              fontSize: 22,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'AgrandirHeavy',
                            )
                            )
                        ),
                        onPressed: () async {
                          TimeOfDay? newTime2 = await showTimePicker(
                            context: context,
                            initialTime: timeWakingup,
                          );
                          if (newTime2 == null) return;
                          setState(() => timeWakingup = newTime2);
                        },
                        child: Text('$WakingupHours:$WakingupMinutes'),
                      ),
                    ),

                    const SizedBox(height: 30),


                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: week.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                            child: Card(
                              child: CheckboxListTile(
                                shape: const Border(
                                  bottom: BorderSide(
                                      color: Colors.white
                                  ),
                                ),
                                tileColor: const Color(bgBlack),
                                title: Text(
                                  week[index],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: 'AgrandirRegular',
                                  ),
                                ),
                                value: isChecked[index],
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked[index] = value!;
                                  });
                                },
                              ),
                            ),
                          );
                        }
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(myGreen)),
                              ),
                              onPressed:() {
                                _updateSchedule();
                              },
                              child: Card(
                                color: const Color(myGreen),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
                                  child: Column(
                                    children: const [
                                      Text('Validate',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontFamily: 'AgrandirRegular',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
      backgroundColor: Colors.white12,

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 1.0)),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.emoji_food_beverage),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/loading_nutritions');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.directions_run),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/trainings_loading');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.bed),
                    color: const Color(myGreen),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/sleep_loading');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_horiz),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/see_more');},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
