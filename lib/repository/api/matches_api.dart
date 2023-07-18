import 'package:dio/dio.dart';

import '../../models/matches/matches.dart';

const host = 'https://prod-public-api.livescore.com/v1/api/app';

class MatchesApi {
  static Future<Matches> getMatches({
    required String sport,
    required String date,
  }) async {
    var dio = Dio();
    var res = await dio.get('$host/date/$sport/$date/3?MD=1&countryCode=RU');
    List<Tournament> list = [];

    res.data['Stages'].forEach((el) {
      list.add(Tournament.fromJson(el));
    });

    return Matches(tournaments: list);
  }

  static Future<Map<String, String>> getCountrysMap({
    required String sport,
    required String date,
  }) async {
    var dio = Dio();
    var res = await dio.get('$host/date/$sport/$date/3?MD=1&countryCode=RU');
    Map<String, String> map = {};

    res.data['Stages'].forEach((el) {
      map.addAll({el['Cnm']: el['Ccd']});
    });
    return map;
  }
}
