import 'percent.dart';

/// Abort specification is used to prematurely abort a request with a pre-specified error code.
/// The following example will return an HTTP 400 error code for 1 out of every 1000 requests to the “ratings” service “v1”.
///
/// The httpStatus field is used to indicate the HTTP status code to return to the caller.
/// The optional percentage field can be used to only abort a certain percentage of requests.
/// If not specified, all requests are aborted.
class Abort {
  /// The main constructor.
  const Abort({
    required this.httpStatus,
    this.percentage,
  });

  /// Creates a Abort from JSON data.
  Abort.fromJson(Map<String, dynamic> json)
      : this(
          httpStatus: json['httpStatus'],
          percentage: json['percentage'] != null
              ? Percent.fromJson(json['percentage'])
              : null,
        );

  /// HTTP status code to use to abort the Http request.
  final int httpStatus;

  /// Percentage of requests to be aborted with the error code provided.
  final Percent? percentage;
}
