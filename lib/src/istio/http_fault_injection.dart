import 'abort.dart';
import 'delay.dart';

/// HTTPFaultInjection can be used to specify one or more faults to inject while forwarding HTTP requests to the destination specified in a route.
/// Fault specification is part of a VirtualService rule. Faults include aborting the Http request from downstream service,
/// and/or delaying proxying of requests. A fault rule MUST HAVE delay or abort or both.
///
/// Note: Delay and abort faults are independent of one another, even if both are specified simultaneously.
class HTTPFaultInjection {
  /// The main constructor.
  const HTTPFaultInjection({
    this.delay,
    this.abort,
  });

  /// Delay requests before forwarding, emulating various failures such as network issues, overloaded upstream service, etc.
  final Delay? delay;

  /// Abort Http request attempts and return error codes back to downstream service, giving the impression that the upstream service is faulty.
  final Abort? abort;
}
