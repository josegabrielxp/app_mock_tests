import 'package:app_mock_tests/domain/models/activity/activity.dart';
import 'package:app_mock_tests/utils/result.dart';

abstract class ActivityRepository {
  Future<Result<List<Activity>>> getByDestination(String ref);
}