import 'package:app_mock_tests/data/repositories/activity/activity_repository.dart';
import 'package:app_mock_tests/data/services/local/local_data_service.dart';
import 'package:app_mock_tests/domain/models/activity/activity.dart';
import 'package:app_mock_tests/utils/result.dart';

class ActivityRepositoryLocal implements ActivityRepository {
  ActivityRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Activity>>> getByDestination(String ref) async {
    try {
      final activities = (await _localDataService.getActivities())
        .where((activity) => activity.destinationRef == ref)
        .toList();

      return Result.ok(activities);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
