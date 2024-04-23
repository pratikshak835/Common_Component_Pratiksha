import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/button/button_widget.dart';
import 'package:common_jds_flutter/widgets/time_picker/custom_time_picker_widget.dart'
    as time;
import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  String? selectedText;
  DaysData? selectedDays;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onClick: () {
        timePicker(
          context,
          0,
        );
      },
      buttonText: selectedText ?? 'click for select time',
    );
  }

  timePicker(
    BuildContext ctx,
    int id,
  ) async {
    var timePickerTheme = const TimePickerThemeData(
      backgroundColor: AppColors.white,
      hourMinuteTextStyle: TextStyle(
        fontSize: 60.0,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(
          fontSize: 8,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(0),
      ),
    );

    final TimeOfDay? pickedTime = await time.showTimePicker(
        initialEntryMode: time.TimePickerEntryMode.input,
        context: ctx,
        helpText: "TimePicker",
        initialTime: TimeOfDay.now(),
        builder: (BuildContext? context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              timePickerTheme: timePickerTheme,
              // primaryColor: AppColors.errorColor,
              colorScheme: const ColorScheme.light(primary: AppColors.black),
            ),
            child: child!,
          );
        });
    if (pickedTime != null) {
      selectedText = pickedTime.format(context).toString();
      setState(() {});
    }
  }
}

class DaysData {
  int? id;
  String? name;
  String? fullName;
  bool? selected;
  String? startTime;
  String? endTime;

  DaysData(
      {this.id,
      this.name,
      this.fullName,
      this.selected,
      this.startTime = "",
      this.endTime = ""});
}
