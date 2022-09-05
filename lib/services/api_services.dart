import 'dart:convert';

import 'package:bottom_street_demo/extras/secret.dart';
import 'package:bottom_street_demo/models/overview_model.dart';
import 'package:bottom_street_demo/models/performance_model.dart';
import 'package:http/http.dart';

class ApiServices {
  Future<OverviewModel> getOverview() async {
    Response responseOverview = await get(Uri.parse(overviewApi));
    if (responseOverview.statusCode == 200) {
      final overview = jsonDecode(responseOverview.body);
      return OverviewModel.fromJson(overview);
    } else {
      throw Exception(responseOverview.reasonPhrase);
    }
  }

  Future<List<PerformanceModel>> getPerformance() async {
    Response responsePerformance = await get(Uri.parse(performanceApi));
    if (responsePerformance.statusCode == 200) {
      final List performance = jsonDecode(responsePerformance.body);
      return performance.map((e) => PerformanceModel.fromJson(e)).toList();
    } else {
      throw Exception(responsePerformance.reasonPhrase);
    }
  }
}
