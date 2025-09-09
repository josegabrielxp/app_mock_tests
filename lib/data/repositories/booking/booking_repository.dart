import '../../../domain/models/booking/booking.dart';
import '../../../domain/models/booking/booking_summary.dart';
import '../../../utils/result.dart';

abstract class BookingRepository {
  
  Future<Result<List<BookingSummary>>> getBookingsList();

  Future<Result<Booking>> getBooking(int id);

  Future<Result<void>> createBooking(Booking booking);

  Future<Result<void>> delete(int id);
}