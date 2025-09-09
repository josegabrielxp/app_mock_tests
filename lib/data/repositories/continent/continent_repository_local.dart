import 'package:app_mock_tests/data/repositories/continent/continent_repository.dart';
import 'package:app_mock_tests/data/services/local/local_data_service.dart';
import 'package:app_mock_tests/domain/models/continent/continent.dart';
import 'package:app_mock_tests/utils/result.dart';

class ContinentRepositoryLocal implements ContinentRepository {
  ContinentRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Continent>>> getContinents() {
    return Future.value(Result.ok(_localDataService.getContinents()));
  }
}