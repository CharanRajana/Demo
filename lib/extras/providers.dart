import 'package:bottom_street_demo/models/performance_model.dart';
import 'package:bottom_street_demo/services/api_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dataProvider = Provider<ApiServices>(
  (ref) => ApiServices(),
);
final performanceProvider = FutureProvider<List<PerformanceModel>>(
  ((ref) async {
    return ref.watch(dataProvider).getPerformance();
  }),
);
final overviewProvider = FutureProvider(
  ((ref) => ref.watch(dataProvider).getOverview()),
);
