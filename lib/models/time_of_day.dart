import 'package:sample/presentation/widgets/widgets.dart';

extension TimeOfDayExtension on TimeOfDay {
  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'minute': minute,
    };
  }

  static TimeOfDay fromJson(
    Map<String, dynamic> json,
  ) {
    return TimeOfDay(
      hour: json['hour'],
      minute: json['minute'],
    );
  }
}
