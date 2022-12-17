/// Time Converter
class TimeConverter {
  String toTimestamp(String date) {
    return (DateTime.parse(date).millisecondsSinceEpoch ~/ 1000).toString();
  }

  /// xx -> xx:xx
  String secToTime(int sec) {
    if (sec <= 0) {
      return '00:00';
    }

    int _min = sec ~/ 60;
    int _sec = sec % 60;

    String time = '';
    if (_min == 0) {
      time = '00';
    } else {
      if (_min.toString().length >= 2) {
        time = _min.toString();
      } else {
        time = '0$_min';
      }
    }

    if (_sec.toString().length >= 2) {
      time = '$time:$_sec';
    } else {
      time = '$time:0$_sec';
    }

    return time;
  }
}
