import '../../../domain/models/continent/continent.dart';
import '../../../utils/result.dart';

abstract class ContinentRepository {
  Future<Result<List<Continent>>> getContinents();
}