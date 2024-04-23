import 'dart:math';

import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/calendar/model/calendar_model.dart';
import 'package:common_jds_flutter/widgets/custom_sliver/custom_sliver.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/app_colors.dart';

class CalendarDropdownWidget extends StatelessWidget {
  final Function onDatesSelect;
  final String displayedString;
  final Function clearDatesCallback;
  final bool showClearIcon;
  final bool enabled;
  final DateTime? endDate;
  final DateTime? initialDate;
  final Offset? offSet;
  List<DateTime?>? highlightDateList;
  final Widget child;

  CalendarDropdownWidget(
      {Key? key,
      required this.onDatesSelect,
      required this.displayedString,
      this.showClearIcon = false,
      required this.clearDatesCallback,
      this.enabled = true,
      this.endDate,
      this.offSet,
      required this.highlightDateList,
      required this.child,
      this.initialDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    highlightDateList ??= [DateTime.now()];
    return Theme(
      data: ThemeData(
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: PopupMenuButton(
        offset: offSet ?? Offset.zero,
        enabled: enabled,
        tooltip: "",
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        itemBuilder: (ctx) {
          return [
            PopupMenuItem(
                padding: EdgeInsets.zero,
                enabled: false,
                child: CalendarWidget(
                    onDone: (val1, val2) {
                      Navigator.of(context).pop();
                      onDatesSelect(val1, val2);
                    },
                    startDate: endDate,
                    highlightDateList: highlightDateList,
                    initialDate: initialDate))
          ];
        },
        child: child,
      ),
    );
  }
}

class CalendarWidget extends StatefulWidget {
  final Function onDone;
  final DateTime? startDate;
  final List<DateTime?>? highlightDateList;
  final DateTime? initialDate;

  const CalendarWidget(
      {Key? key,
      required this.onDone,
      this.startDate,
      this.highlightDateList,
      this.initialDate})
      : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime? selectedDateTime;
  DateTime? selectedDateTime2;
  List<DateTime> rangeDays = [];
  DateTime _currentDate2 =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  List<CalendarWidgetModel> _sequentialDates = [];
  final List<String> _weekDays = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
  bool reduceHeight = false;

  _leftPressed() {
    final int cYear = _currentDate2.year;
    final int cMonth = _currentDate2.month - 1;
    final time = DateTime(cYear, cMonth, 1);
    _currentDate2 = time;
    _sequentialDates = CustomCalendar().getMonthCalendar(
      _currentDate2.month,
      _currentDate2.year,
    );
    calculateIfHeightReduction();
    setState(() {});
  }

  DateTime addMonth(DateTime date) {
    var year = date.year + (date.month < 12 ? 0 : 1);
    var month = (date.month + 1) % 12;
    if (month == 0) month = 12;
    var day = date.day;

    // Adjust day if the result is an invalid date, e.g., adding a month to January 31st
    if (day > 28) {
      day = min(day, DateTime(year, month + 1, 0).day);
    }

    return DateTime(year, month, day, date.hour, date.minute, date.second,
        date.millisecond, date.microsecond);
  }

  _rightPressed() {
    // final time = (Jiffy(_currentDate2).add(months: 1)).dateTime;
    var time = _currentDate2;
    time = addMonth(time);
    _currentDate2 = time;
    _sequentialDates = CustomCalendar().getMonthCalendar(
      _currentDate2.month,
      _currentDate2.year,
    );

    calculateIfHeightReduction();
    setState(() {});
  }

  @override
  void initState() {
    debugPrint("List value: ${widget.highlightDateList}");
    if (widget.highlightDateList!.isNotEmpty &&
        widget.highlightDateList![0] != null) {
      DateTime temp = widget.highlightDateList![0]!;
      selectedDateTime = DateTime(temp.year, temp.month, temp.day);
    } else {
      selectedDateTime = null;
    }
    if (widget.highlightDateList!.isNotEmpty &&
        widget.highlightDateList!.length > 1 &&
        widget.highlightDateList![1] != null) {
      DateTime temp2 = widget.highlightDateList![1]!;
      selectedDateTime2 = DateTime(temp2.year, temp2.month, temp2.day);
      for (int i = 1;
          i < selectedDateTime2!.difference(selectedDateTime!).inDays;
          i++) {
        rangeDays.add(selectedDateTime!.add(Duration(days: i)));
      }
    } else {
      selectedDateTime2 = null;
    }

    // selectedDateTime = null;
    // selectedDateTime2 = null;
    _currentDate2 =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    _sequentialDates = CustomCalendar().getMonthCalendar(
        _currentDate2.month, _currentDate2.year,
        startWeekDay: StartWeekDay.sunday);
    if (widget.startDate != null) checkForStartDate = true;
    calculateIfHeightReduction();
    super.initState();
  }

  void calculateIfHeightReduction() {
    if (_sequentialDates.length <= 35) {
      reduceHeight = true;
    } else {
      reduceHeight = false;
    }
  }

  String formatDateString(String dateString) {
    DateTime date = DateTime.parse(dateString);
    String monthAbbreviation = getMonthAbbreviation(date.month);
    String year = date.year.toString();
    return '$monthAbbreviation $year';
  }

  String getMonthAbbreviation(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_sequentialDates.isEmpty) return Container();
    return Container(
      height: reduceHeight ? 316 : 360.0,
      width: 300.0,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomInkwell(
                    onTap: _leftPressed,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,
                      color: AppColors.kPrimaryColor,
                    )),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: CustomText(
                    color: AppColors.FF1D1D1D,
                    size: Dimens.size16,
                    text: formatDateString("$_currentDate2"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomInkwell(
                    onTap: _rightPressed,
                    child: const Icon(Icons.arrow_forward_ios,
                        size: 20.0, color: AppColors.kPrimaryColor)),
              ),
            ],
          ),
          const SizedBox(height: 7.0),
          const Divider(),
          const SizedBox(height: 7.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < 7; i++)
                  Text(
                    _weekDays[i],
                  )
              ],
            ),
          ),
          const SizedBox(height: 15),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            itemCount: _sequentialDates.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              mainAxisSpacing: 5,
              crossAxisCount: 7,
              crossAxisSpacing: 7.0,
              height: 30.0,
            ),
            itemBuilder: (context, index) {
              if (_sequentialDates[index].date == selectedDateTime ||
                  _sequentialDates[index].date == selectedDateTime2) {
                return _selector(_sequentialDates[index]);
              }
              return _calendarDates(_sequentialDates[index]);
            },
          ),
          const Spacer(),
          if (selectedDateTime == null)
            const Center(
              child: CustomText(
                text: "Please select time period to continue ",
                size: 14.0,
                color: AppColors.FF707070,
              ),
            )
          else
            InkWell(
              onTap: () {
                widget.onDone(selectedDateTime, selectedDateTime2);
              },
              child: Container(
                width: double.infinity,
                height: 32.0,
                decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: AppColors.FFCFD3DF, width: 0.5)),
                child: const Center(
                  child: CustomText(
                    text: "Done",
                    color:
                        // controller.checkIfFormValid()
                        //  ?
                        Colors.white,
                    // : Colors.black)),
                  ),
                ),
                // ],
              ),
            ),
          const SizedBox(height: 8.0)
        ],
      ),
    );
  }

  Widget _selector(CalendarWidgetModel calendarDate) {
    return calendarDate.thisMonth
        ? InkWell(
            onTap: () {
              setState(() {
                selectedDateTime = calendarDate.date;
                rangeDays.clear();
                selectedDateTime2 = null;
              });
              //  fetchShiftDets();
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                width: 30,
                height: 90,
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: CustomText(
                    text: '${calendarDate.date.day}',
                    color: Colors.white,
                    // weight: FONTWEIGHT.medium,
                    // type: "h5",
                  ),
                ),
              ),
            ),
          )
        : Container();
  }

  Widget _calendarDates(CalendarWidgetModel calendarDate) {
    bool isDateAfterStartDate = checkIfDateAfterStartDate(calendarDate.date);
    bool isDateBeforeInitialDate =
        checkIfDateIsBeforeInitialDate(calendarDate.date);
    return calendarDate.thisMonth
        ? InkWell(
            mouseCursor: (isDateAfterStartDate || isDateBeforeInitialDate)
                ? SystemMouseCursors.basic
                : SystemMouseCursors.click,
            onTap: () {
              if (isDateAfterStartDate || isDateBeforeInitialDate) {
                return;
              }
              if (selectedDateTime != calendarDate.date) {
                if (selectedDateTime != null && selectedDateTime2 != null) {
                  setState(() {
                    selectedDateTime = calendarDate.date;
                    selectedDateTime2 = null;
                    rangeDays.clear();
                  });
                  // fetchShiftDets();
                }
              }

              if (selectedDateTime != null &&
                  selectedDateTime != calendarDate.date) {
                setState(() {
                  if (selectedDateTime!.compareTo(calendarDate.date) > 0) {
                    final DateTime? temp = selectedDateTime;
                    selectedDateTime = calendarDate.date;
                    selectedDateTime2 = temp;
                  } else {
                    selectedDateTime2 = calendarDate.date;
                  }
                });
                setState(() {
                  rangeDays.clear();
                });

                for (int i = 1;
                    i < selectedDateTime2!.difference(selectedDateTime!).inDays;
                    i++) {
                  rangeDays.add(selectedDateTime!.add(Duration(days: i)));
                }
                setState(() {});
              }
              if (selectedDateTime == null) {
                setState(() {
                  selectedDateTime = calendarDate.date;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: rangeDays.contains(calendarDate.date)
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))
                    : BorderRadius.zero,
                color: rangeDays.contains(calendarDate.date)
                    ? AppColors.FFFEF2E9
                    : Colors.transparent,
              ),
              width: double.infinity,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 14,
                child: CustomText(
                  text: calendarDate.date.day.toString(),
                  size: 16.0,
                  color: (isDateAfterStartDate || isDateBeforeInitialDate)
                      ? Colors.grey
                      : AppColors.FF1D1D1D,
                ),
              ),
            ),
          )
        : Container();
  }

  bool checkIfDateAfterStartDate(DateTime date) {
    return checkForStartDate && date.isAfter(widget.startDate!);
  }

  bool checkForStartDate = false;

  bool checkIfDateIsBeforeInitialDate(DateTime date) {
    if (widget.initialDate == null) return false;
    return date.isBefore(widget.initialDate!);
  }
}

class DateRangeWidget extends StatefulWidget {
  final Function onDone;
  final Function? onDateSelected;
  final DateTime? startDate;
  final DateTime? highlightDate;
  final bool showDoneButton;
  final double? width;

  const DateRangeWidget(
      {Key? key,
      required this.onDone,
      this.onDateSelected,
      this.startDate,
      this.highlightDate,
      this.showDoneButton = true,
      this.width})
      : super(key: key);

  @override
  _DateRangeWidgetState createState() => _DateRangeWidgetState();
}

class _DateRangeWidgetState extends State<DateRangeWidget> {
  DateTime? selectedDateTime;
  DateTime? selectedDateTime2;
  List<DateTime> rangeDays = [];
  DateTime _currentDate2 =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  List<CalendarWidgetModel> _sequentialDates = [];
  final List<String> _weekDays = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
  bool reduceHeight = false;

  _leftPressed() {
    final int cYear = _currentDate2.year;
    final int cMonth = _currentDate2.month - 1;
    final time = DateTime(cYear, cMonth, 1);
    _currentDate2 = time;
    _sequentialDates = CustomCalendar().getMonthCalendar(
      _currentDate2.month,
      _currentDate2.year,
    );
    calculateIfHeightReduction();
    setState(() {});
  }

  DateTime addMonth(DateTime date) {
    var year = date.year + (date.month < 12 ? 0 : 1);
    var month = (date.month + 1) % 12;
    if (month == 0) month = 12;
    var day = date.day;

    // Adjust day if the result is an invalid date, e.g., adding a month to January 31st
    if (day > 28) {
      day = min(day, DateTime(year, month + 1, 0).day);
    }

    return DateTime(year, month, day, date.hour, date.minute, date.second,
        date.millisecond, date.microsecond);
  }

  _rightPressed() {
    var time = _currentDate2;
    time = addMonth(time);
    _currentDate2 = time;
    _sequentialDates = CustomCalendar().getMonthCalendar(
      _currentDate2.month,
      _currentDate2.year,
    );

    calculateIfHeightReduction();
    setState(() {});
  }

  @override
  void initState() {
    selectedDateTime = null;
    selectedDateTime2 = null;
    if (widget.startDate != null) checkForStartDate = true;
    _currentDate2 =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    _sequentialDates = CustomCalendar().getMonthCalendar(
        _currentDate2.month, _currentDate2.year,
        startWeekDay: StartWeekDay.sunday);
    calculateIfHeightReduction();
    if (widget.highlightDate != null) {
      DateTime hightlightedDate = widget.highlightDate!;
      selectedDateTime = DateTime(
          hightlightedDate.year, hightlightedDate.month, hightlightedDate.day);
    } else {
      selectedDateTime = null;
    }

    super.initState();
  }

  void calculateIfHeightReduction() {
    if (_sequentialDates.length <= 35) {
      reduceHeight = true;
    } else {
      reduceHeight = false;
    }
  }

  String formatDateString(String dateString) {
    DateTime date = DateTime.parse(dateString);
    String monthAbbreviation = getMonthAbbreviation(date.month);
    String year = date.year.toString();
    return '$monthAbbreviation $year';
  }

  String getMonthAbbreviation(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_sequentialDates.isEmpty) return Container();

    return Container(
      height: widget.showDoneButton
          ? reduceHeight
              ? 316
              : 360.0
          : reduceHeight
              ? 270
              : 320.0,
      width: 300,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomInkwell(
                    onTap: _leftPressed,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,
                      color: AppColors.kPrimaryColor,
                    )),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: CustomText(
                    color: AppColors.FF1D1D1D,
                    size: Dimens.size16,
                    text: formatDateString("$_currentDate2"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomInkwell(
                    onTap: _rightPressed,
                    child: const Icon(Icons.arrow_forward_ios,
                        size: 20.0, color: AppColors.kPrimaryColor)),
              ),
            ],
          ),
          const SizedBox(height: 7.0),
          const Divider(),
          const SizedBox(height: 7.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < 7; i++)
                  Text(
                    _weekDays[i],
                  )
              ],
            ),
          ),
          const SizedBox(height: 15),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            itemCount: _sequentialDates.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              mainAxisSpacing: 5,
              crossAxisCount: 7,
              crossAxisSpacing: 7.0,
              height: 30.0,
            ),
            itemBuilder: (context, index) {
              if (_sequentialDates[index].date == selectedDateTime ||
                  _sequentialDates[index].date == selectedDateTime2) {
                return _selector(_sequentialDates[index]);
              }
              return _calendarDates(_sequentialDates[index]);
            },
          ),
          const Spacer(),
          if (selectedDateTime == null && widget.showDoneButton == true)
            const Center(
              child: CustomText(
                text: "Please select time period to continue ",
                size: 14.0,
                color: AppColors.FF707070,
              ),
            )
          else if (selectedDateTime != null && widget.showDoneButton == true)
            InkWell(
              onTap: () {
                widget.onDone(selectedDateTime, selectedDateTime2);
              },
              child: Container(
                width: double.infinity,
                height: 32.0,
                decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: AppColors.FFCFD3DF, width: 0.5)),
                child: const Center(
                  child: CustomText(
                    text: "Done",
                    color:
                        // controller.checkIfFormValid()
                        //  ?
                        Colors.white,
                    // : Colors.black)),
                  ),
                ),
                // ],
              ),
            ),
          const SizedBox(height: 8.0)
        ],
      ),
    );
  }

  Widget _selector(CalendarWidgetModel calendarDate) {
    return calendarDate.thisMonth
        ? InkWell(
            onTap: () {
              setState(() {
                selectedDateTime = calendarDate.date;
                rangeDays.clear();
                selectedDateTime2 = null;
              });
              //  fetchShiftDets();
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                width: 30,
                height: 90,
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: CustomText(
                    text: '${calendarDate.date.day}',
                    color: Colors.white,
                    // weight: FONTWEIGHT.medium,
                    // type: "h5",
                  ),
                ),
              ),
            ),
          )
        : Container();
  }

  Widget _calendarDates(CalendarWidgetModel calendarDate) {
    bool isDateBeforeStartDate = checkIfDateBeforeStartDate(calendarDate.date);
    return calendarDate.thisMonth
        ? InkWell(
            mouseCursor: isDateBeforeStartDate
                ? SystemMouseCursors.basic
                : SystemMouseCursors.click,
            onTap: () {
              if (isDateBeforeStartDate) {
                return;
              }
              if (selectedDateTime != calendarDate.date) {
                setState(() {
                  selectedDateTime = calendarDate.date;
                });
              }
              debugPrint("widget.onDone(selectedDateTime, selectedDateTime2)");

              if (widget.onDateSelected != null) {
                widget.onDateSelected!(selectedDateTime, selectedDateTime2);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: rangeDays.contains(calendarDate.date)
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))
                    : BorderRadius.zero,
                color: rangeDays.contains(calendarDate.date)
                    ? AppColors.FFFEF2E9
                    : Colors.transparent,
              ),
              width: double.infinity,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 14,
                child: CustomText(
                  text: calendarDate.date.day.toString(),
                  color:
                      isDateBeforeStartDate ? Colors.grey : AppColors.FF1D1D1D,
                  size: 16.0,
                ),
              ),
            ),
          )
        : Container();
  }

  bool checkIfDateBeforeStartDate(DateTime date) {
    return checkForStartDate && date.isBefore(widget.startDate!);
  }

  bool checkForStartDate = false;
}

class AmOrPmFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if ("am".contains(newValue.text.toLowerCase()) ||
        "pm".contains(newValue.text.toLowerCase())) {
      return newValue;
    }
    if (newValue.text.isEmpty) {
      return TextEditingValue(
          text: "AM",
          selection: TextSelection.fromPosition(const TextPosition(offset: 2)));
    }
    return TextEditingValue(
        text: "AM",
        selection: TextSelection.fromPosition(const TextPosition(offset: 2)));
  }
}

class NumericalRangeFormatter extends TextInputFormatter {
  final double min;
  final double max;

  NumericalRangeFormatter({required this.min, required this.max});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text == '') {
      return newValue;
    } else if (int.parse(newValue.text) < min) {
      return const TextEditingValue().copyWith(text: min.toStringAsFixed(0));
    } else {
      return int.parse(newValue.text) > max ? oldValue : newValue;
    }
  }
}
