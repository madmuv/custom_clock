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
                    String seconds = currentTime.second < 10 ? "0${currentTime.second}":"${currentTime.second}";
                    String minutes = currentTime.minute < 10 ? "0${currentTime.minute}":"${currentTime.minute}";
                    String hours = currentTime.hour < 10 ? "0${currentTime.hour}":"${currentTime.hour}";

                    return Column(
                      children: [
                        Center(
                          child: Text("$hours:$minutes:$seconds", style: AppStyle.mainText,)
                        ),
                        Center(
                          child: ClockWidget(TimeModel(currentTime.hour,
                              currentTime.minute, currentTime.second)),
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
