import 'package:app_mock_tests/data/repositories/user/user_repository.dart';
import 'package:app_mock_tests/data/services/local/local_data_service.dart';
import 'package:app_mock_tests/domain/models/user/user.dart';
import 'package:app_mock_tests/utils/result.dart';

class UserRepositoryLocal implements UserRepository {
  UserRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<User>> getUser() async {
    return Result.ok(_localDataService.getUser());
  }
}