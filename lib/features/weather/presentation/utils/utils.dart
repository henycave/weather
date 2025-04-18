import 'package:intl/intl.dart';

String formattedCurrentDate() {
  final now = DateTime.now();
  final dayOfWeek = DateFormat('EEEE').format(now);
  final monthDay = DateFormat('MMM d').format(now);
  return '$dayOfWeek | $monthDay';
}

String formattedDate(DateTime date){
  return DateFormat('EEEE').format(date);
}

bool isSameDate(DateTime firstDate, DateTime secondDate){
  return (firstDate.year == secondDate.year && firstDate.month == secondDate.month && firstDate.day == secondDate.day);
}