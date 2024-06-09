import 'package:flutter/material.dart';
// import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

class AlarmWidget extends StatefulWidget {
  const AlarmWidget({super.key});

  @override
  State<AlarmWidget> createState() {
    return _AlarmWidgetState();
  }
}

class _AlarmWidgetState extends  State<AlarmWidget> {
  bool enableAlarm = false;

  Future<void> toggleAlarm(bool status) async {
    // if (status) {
    //   await AndroidAlarmManager.periodic(
    //     const Duration(seconds: 10),
    //     // Ensure we have a unique alarm ID.
    //     994477,
    //     () async {},
    //     allowWhileIdle:true,
    //     exact: true,
    //     rescheduleOnReboot:true,
    //     wakeup: true,
    //   );
    // } else {
    //   await AndroidAlarmManager.cancel(994477);
    // }

    setState(() {
      enableAlarm = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Status:",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        Switch(
          value: enableAlarm,
          activeColor: Colors.green,
          onChanged: toggleAlarm,
        )
      ]
    );
  }
}