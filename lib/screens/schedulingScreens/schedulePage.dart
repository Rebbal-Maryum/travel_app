import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travel_app/screens/schedulingScreens/travelArrangement.dart';

import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../../config/strings.dart';
import '../../config/styles.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime selectedDay=DateTime.now();
  DateTime focusedDay=DateTime.now();
  bool switchValue = true;
  CalendarFormat format=CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode=RangeSelectionMode.toggledOn;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          elevation: 0, // Remove the shadow
          title: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.001,
              top: MediaQuery.of(context).size.height * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back,color: AppColors.primaryColor,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,),
                Text(AppStrings.plann, style: h6Bold20Black.copyWith(fontSize: 23,fontWeight:
                FontWeight.w600),),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          // top: MediaQuery.of(context).size.height * 0.01,
          right: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.05,),
              Stack(
                children: [
                  Image.asset(
                    ImageAssets.rectangle,
                  ),
                  Positioned(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.04,
                      child: Text(AppStrings.cottagepoppins,style: h8Light12White.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 14
                      ),)),
                  Positioned(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.height * 0.06,
                      child: Text(AppStrings.cottage,style: h7Light22White.copyWith(
                          fontSize: 25
                      ),)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03 ,
              ),
              Stack(
                children:[ TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 10),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime(DateTime.now().year, 3, 1),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  rangeStartDay: _rangeStart,
                  rangeEndDay: _rangeEnd,
                  rangeSelectionMode: _rangeSelectionMode,
                  onRangeSelected: (start, end, focusedDay){
                    setState(() {
                      _rangeStart=start;
                      _rangeEnd=end;
                      _rangeSelectionMode=RangeSelectionMode.toggledOn;
                    });},
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle:h5Light16Grey.copyWith(fontWeight: FontWeight.w300,
                        fontSize: 12,color: AppColors.light),
                    weekendStyle:h5Light16Grey.copyWith(fontWeight: FontWeight.w300,
                        fontSize: 12,color: AppColors.light),
                  ),
                  calendarStyle: CalendarStyle(
                    cellAlignment: Alignment.center,
                    outsideDaysVisible: false,
                    selectedTextStyle: TextStyle(
                        fontSize: 16, color: AppColors.whitecolor),
                todayDecoration: BoxDecoration(
                  color: AppColors.navigatorColor,
                  shape: BoxShape.circle,
                ),
                selectedDecoration:  BoxDecoration(
                color: AppColors.navigatorColor,
                shape: BoxShape.circle,
                ),
                rangeStartDecoration: BoxDecoration(
                  color: AppColors.navigatorColor,
                  shape: BoxShape.circle,
                ),
                    rangeHighlightScale: 1.0,
                    rangeEndDecoration:  BoxDecoration(
                color: AppColors.navigatorColor,
                shape: BoxShape.circle,
                ),
                weekendTextStyle: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                         fontSize: 13),
                    defaultTextStyle:  h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                        fontSize: 13),
                    withinRangeTextStyle:h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                        fontSize: 13) ,
                    rangeEndTextStyle:h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                        fontSize: 14,color: AppColors.whitecolor) ,
                    rangeStartTextStyle:h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                      fontSize: 14,color: AppColors.whitecolor) ,
                    isTodayHighlighted: true,
                  ),
                  // onDaySelected: (DateTime selectDay,DateTime focusDay){
                  //   setState(() {
                  //     selectedDay=selectDay;
                  //     focusedDay=focusDay;
                  //   });
                  //   print(focusedDay);
                  // },
                  // selectedDayPredicate: (DateTime date){
                  //   return isSameDay(selectedDay, date);
                  // },
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    leftChevronVisible: true,
                    rightChevronVisible: true,
                    leftChevronIcon: Icon(Icons.chevron_left,color: AppColors.light,),
                      rightChevronIcon: Icon(Icons.chevron_right,color: AppColors.light,),
                    headerMargin: EdgeInsets.symmetric
                      (vertical:MediaQuery.of(context).size.height * 0.001),
                    headerPadding: EdgeInsets.only(left:MediaQuery.of(context).size.width * 0.38)
                  ),
                  calendarBuilders: CalendarBuilders(
                    headerTitleBuilder: (BuildContext context, DateTime date) {
                      return Text(
                        DateFormat.MMMM().format(date),
                        style: h6Bold20Black.copyWith(fontWeight: FontWeight.w400,fontSize: 15),
                     textAlign: TextAlign.center, );
                    },
                  ),
                ),
                  Positioned(
                    left: 0,
                    top: MediaQuery.of(context).size.height * 0.017,
                    child: Container(
                      child: Text(
                       AppStrings.dates, style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                          fontSize: 14) ,
                      ),
                    ),
                  ),
                ]
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,),
              Text(
                AppStrings.dates,
                style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: AppStrings.journey,
                        hintStyle: h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),
                        prefixIcon: Container(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01,),
                          child: Image.asset(ImageAssets.group),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: AppColors.light,
                            width: 0.3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: AppColors.primaryColor,
                            width: 0.5,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01
                            , horizontal: MediaQuery.of(context).size.width * 0.01),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (c)=>StartScreenTwo()));
                    },
                    child: SvgPicture.asset(SvgAssets.go),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      padding: MaterialStateProperty.resolveWith(
                            (Set<MaterialState> states) {
                          return EdgeInsets.all(15);
                        },
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.navigatorColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
               height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  Text(AppStrings.send,style: h6Bold20Black.copyWith
                    (fontWeight: FontWeight.w300,fontSize: 15),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.35,),
                  Spacer(),
                  Switch(
                    activeColor: AppColors.navigatorColor,
                    activeTrackColor: AppColors.searchColor,
                    inactiveTrackColor: AppColors.searchColor,
                    inactiveThumbColor: AppColors.navigatorColor,
                    value: switchValue,
                    onChanged: (bool newValue) {
                      setState(() {
                        switchValue = newValue;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (c)=>TravelArrangementScreen()));
              }, child: Text(AppStrings.next,style:h4Bold26Black.copyWith(fontSize: 16,color:
              AppColors.whitecolor,fontWeight: FontWeight.w500)),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.017,
                      horizontal: MediaQuery.of(context).size.width * 0.34,
                    ),
                  ),
                  backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
                ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.043,),
            ],
          ),
        ),
      )
    );
  }
}
