import 'package:custom_clock/ui/style.dart';
import 'package:custom_clock/utils/time_model.dart';
import 'package:custom_clock/widgets/clock_widget.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TimerBuilder.periodic(const Duration(seconds: 1),
                  builder: (context) {
                var currentTime = DateTime.now();

                // set the digital clock string values
                String seconds = currentTime.second < 10
                    ? "0${currentTime.second}"
                    : "${currentTime.second}";
                String minutes = currentTime.minute < 10
                    ? "0${currentTime.minute}"
                    : "${currentTime.minute}";
                String hours = currentTime.hour < 10
                    ? "0${currentTime.hour}"
                    : "${currentTime.hour}";

                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: AppStyle.mainTextThin,
                        ),
                        Text(
                          "$hours:$minutes:$seconds",
                          style: AppStyle.mainText,
                        )
                      ],
                    ),
                    Center(
                      child: ClockWidget(TimeModel(currentTime.hour,
                          currentTime.minute, currentTime.second)),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 60.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select another Time Zone",
                      style: TextStyle(fontSize: 18.0)),
                  Divider(
                    color: Colors.black45,
                  ),
                ],
              ),
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 24.0),
                    width: MediaQuery.of(context).size.width - 52,
                    height: 100.0,
                    padding: EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bei jin",
                              style: AppStyle.mainTextWhite,
                            ),
                            Text(
                              "${DateTime.now().hour}:${DateTime.now().minute}",
                              style: AppStyle.mainTextWhite,
                            )
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Today",
                          style: AppStyle.mainTextThinWhite,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24.0),
                    width: MediaQuery.of(context).size.width - 52,
                    height: 100.0,
                    padding: EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bei jin",
                              style: AppStyle.mainTextWhite,
                            ),
                            Text(
                              "${DateTime.now().hour}:${DateTime.now().minute}",
                              style: AppStyle.mainTextWhite,
                            )
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Today",
                          style: AppStyle.mainTextThinWhite,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24.0),
                    width: MediaQuery.of(context).size.width - 52,
                    height: 100.0,
                    padding: EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bei jin",
                              style: AppStyle.mainTextWhite,
                            ),
                            Text(
                              "${DateTime.now().hour}:${DateTime.now().minute}",
                              style: AppStyle.mainTextWhite,
                            )
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Today",
                          style: AppStyle.mainTextThinWhite,
                        )
                      ],
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 60.0,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppStyle.primaryColorDark,
        unselectedItemColor: AppStyle.primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: "Clock"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Alarm"),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: "StopWatch"),
          BottomNavigationBarItem(icon: Icon(Icons.timelapse_outlined), label: "Timer"),
        ],
      ),
    );
  }
}
