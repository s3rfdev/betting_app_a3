import '../models/matches/matches.dart';

import 'api/matches_api.dart';

class Repo {
  Future<Matches> getMatches({
    required String sport,
    required String date,
  }) async {
    return MatchesApi.getMatches(sport: sport, date: date);
  }

  Future<Map<String, String>> getCountrysMap({
    required String sport,
    required String date,
  }) async {
    return MatchesApi.getCountrysMap(sport: sport, date: date);
  }
}
