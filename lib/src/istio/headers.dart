import 'package:kubernetes/src/istio/header_operations.dart';

class Headers {
  const Headers({
    this.request,
    this.response,
  });

  /// Header manipulation rules to apply before forwarding a request to the destination service.
  final HeaderOperations? request;

  /// Header manipulation rules to apply before returning a response to the caller.
  final HeaderOperations? response;
}
