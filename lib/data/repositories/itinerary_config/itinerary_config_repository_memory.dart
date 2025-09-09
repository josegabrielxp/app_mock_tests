import 'package:app_mock_tests/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:app_mock_tests/domain/models/itinerary_config/itinerary_config.dart';
import 'package:app_mock_tests/utils/result.dart';

class ItineraryConfigRepositoryMemory implements ItineraryConfigRepository {
  ItineraryConfig? _itineraryConfig;

  @override
  Future<Result<ItineraryConfig>> getItineraryConfig() async {
    return Result.ok(_itineraryConfig ?? const ItineraryConfig());
  }

  @override
  Future<Result<bool>> setItineraryConfig(
    ItineraryConfig itineraryConfig
  ) async {
    _itineraryConfig = itineraryConfig;
    return const Result.ok(true);
  }
}