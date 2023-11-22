//! 1507. Reformat Date
String reformatDate(String date) {
  List<String> parts = date.split(' ');

  String day = parts[0].replaceAll(RegExp(r'\D'), '');
  String month = parts[1];
  String year = parts[2];

  Map<String, String> monthMap = {
    'Jan': '01',
    'Feb': '02',
    'Mar': '03',
    'Apr': '04',
    'May': '05',
    'Jun': '06',
    'Jul': '07',
    'Aug': '08',
    'Sep': '09',
    'Oct': '10',
    'Nov': '11',
    'Dec': '12'
  };
  String? monthNumeric = monthMap[month];

  if (day.length == 1) {
    day = '0$day';
  }

  return '$year-$monthNumeric-$day';
}
