import 'package:app_mock_tests/data/repositories/auth/auth_repository.dart';
import 'package:app_mock_tests/utils/result.dart';

class AuthRepositoryDev extends AuthRepository {
  @override  
  Future<bool> get isAuthenticated => Future.value(true);

  @override
  Future<Result<void>> login({
    required String email,
     required String password
  }) async {
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> logout() async {
    return Result.ok(null);
  }

}