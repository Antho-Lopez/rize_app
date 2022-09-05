import 'package:flutter/material.dart';

class WeightEdit extends StatefulWidget {
  const WeightEdit({Key? key}) : super(key: key);

  @override
  State<WeightEdit> createState() => _WeightEditState();
}

class _WeightEditState extends State<WeightEdit> {

  double currentWeight = double.parse((68.2).toStringAsFixed(1));

  @override

  Widget build(BuildContext context) {

    const myGreen = 0xff0E604F;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
            onPressed: () {
              Navigator.pushNamed(context, '/weight_loading');
            }),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ListView(
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
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Flexible(
                          child: Text(
                            'Your new weight',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed:() {
                                        setState(() {
                                          currentWeight = currentWeight - 0.1;
                                          currentWeight = double.parse((currentWeight).toStringAsFixed(1));
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.remove_circle_outline,
                                          size: 36,
                                          color: Colors.white,
                                      )
                                  ),
                                  Text(
                                    '$currentWeight'  ' Kg',
                                    style: const TextStyle(
                                      fontSize: 36,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: 'AgrandirHeavy',
                                    ),
                                  ),
                                  IconButton(
                                      onPressed:() {
                                        setState(() {
                                          currentWeight = currentWeight + 0.1;
                                          currentWeight = double.parse((currentWeight).toStringAsFixed(1));
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.add_circle_outline,
                                          size: 36,
                                          color: Colors.white,
                                      )
                                  ),
                                ],
                              ),
                            )
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 250),
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
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              onPressed:() {
                                Navigator.pushNamed(context, '/');
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
                    onPressed: () {Navigator.pushNamed(context, '/nutritions');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.directions_run),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/trainings');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    color: const Color(myGreen),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/');},
                  ),
                  IconButton(
                    icon: const Icon(Icons.bed),
                    iconSize: 30,
                    onPressed: () {Navigator.pushNamed(context, '/sleepings');},
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
      backgroundColor: Colors.white12,
    );
  }
}
