part of '../../../../istio_v1beta1.dart';

/// HTTPRedirect can be used to send a 301 redirect response to the caller,
/// where the Authority/Host and the URI in the response can be swapped with the specified values.
/// For example, the following rule redirects requests for /v1/getProductRatings API on the ratings
/// service to /v1/bookRatings provided by the bookratings service.
class HTTPRedirect {
  /// The main constructor.
  const HTTPRedirect({
    this.uri,
    this.authority,
    this.redirectCode,
  });

  /// Creates a HTTPRedirect from JSON data.
  HTTPRedirect.fromJson(Map<String, dynamic> json)
      : this(
          uri: json['uri'],
          authority: json['authority'],
          redirectCode: json['redirectCode'],
        );

  /// On a redirect, overwrite the Path portion of the URL with this value.
  ///
  /// Note that the entire path will be replaced, irrespective of the request URI being matched as an exact path or prefix.
  final String? uri;

  /// On a redirect, overwrite the Authority/Host portion of the URL with this value.
  final String? authority;

  /// On a redirect, Specifies the HTTP status code to use in the redirect response. The default response code is MOVED_PERMANENTLY (301).
  final int? redirectCode;
}
