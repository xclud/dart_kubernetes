import 'package:kubernetes/src/generated/api/core/v1/exec_action.dart';
import 'package:kubernetes/src/generated/api/core/v1/grpc_action.dart';
import 'package:kubernetes/src/generated/api/core/v1/http_get_action.dart';
import 'package:kubernetes/src/generated/api/core/v1/tcp_socket_action.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class Probe {
  /// The main constructor.
  const Probe({
    this.exec,
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.terminationGracePeriodSeconds,
    this.timeoutSeconds,
  });

  /// Creates a Probe from JSON data.
  Probe.fromJson(Map<String, dynamic> json)
      : this(
          exec: json['exec'] != null ? ExecAction.fromJson(json['exec']) : null,
          failureThreshold: json['failureThreshold'],
          grpc: json['grpc'] != null ? GRPCAction.fromJson(json['grpc']) : null,
          httpGet: json['httpGet'] != null
              ? HTTPGetAction.fromJson(json['httpGet'])
              : null,
          initialDelaySeconds: json['initialDelaySeconds'],
          periodSeconds: json['periodSeconds'],
          successThreshold: json['successThreshold'],
          tcpSocket: json['tcpSocket'] != null
              ? TCPSocketAction.fromJson(json['tcpSocket'])
              : null,
          terminationGracePeriodSeconds: json['terminationGracePeriodSeconds'],
          timeoutSeconds: json['timeoutSeconds'],
        );

  /// Creates a list of Probe from JSON data.
  static List<Probe> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Probe.fromJson(e)).toList();
  }

  /// Converts a Probe instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (exec != null) {
      jsonData['exec'] = exec!.toJson();
    }
    if (failureThreshold != null) {
      jsonData['failureThreshold'] = failureThreshold!;
    }
    if (grpc != null) {
      jsonData['grpc'] = grpc!.toJson();
    }
    if (httpGet != null) {
      jsonData['httpGet'] = httpGet!.toJson();
    }
    if (initialDelaySeconds != null) {
      jsonData['initialDelaySeconds'] = initialDelaySeconds!;
    }
    if (periodSeconds != null) {
      jsonData['periodSeconds'] = periodSeconds!;
    }
    if (successThreshold != null) {
      jsonData['successThreshold'] = successThreshold!;
    }
    if (tcpSocket != null) {
      jsonData['tcpSocket'] = tcpSocket!.toJson();
    }
    if (terminationGracePeriodSeconds != null) {
      jsonData['terminationGracePeriodSeconds'] =
          terminationGracePeriodSeconds!;
    }
    if (timeoutSeconds != null) {
      jsonData['timeoutSeconds'] = timeoutSeconds!;
    }

    return jsonData;
  }

  /// Exec specifies the action to take.
  final ExecAction? exec;

  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  final int? failureThreshold;

  /// GRPC specifies an action involving a GRPC port. This is a beta field and requires enabling GRPCContainerProbe feature gate.
  final GRPCAction? grpc;

  /// HTTPGet specifies the http request to perform.
  final HTTPGetAction? httpGet;

  /// Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes.
  final int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  final int? periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
  final int? successThreshold;

  /// TCPSocket specifies an action involving a TCP port.
  final TCPSocketAction? tcpSocket;

  /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
  final int? terminationGracePeriodSeconds;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes.
  final int? timeoutSeconds;
}
