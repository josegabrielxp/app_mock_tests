import '../../../domain/models/itinerary_config/itinerary_config.dart';
import '../../../utils/result.dart';

abstract class ItineraryConfigRepository {
  Future<Result<ItineraryConfig>> getItineraryConfig();
  
  Future<Result<void>> setItineraryConfig(ItineraryConfig itineraryConfig);
}