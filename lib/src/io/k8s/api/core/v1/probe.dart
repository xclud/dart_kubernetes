// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class Probe {
  /// Default constructor.
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

  /// Creates a [Probe] from JSON data.
  factory Probe.fromJson(Map<String, dynamic> json) {
    final tempExecJson = json['exec'];
    final tempFailureThresholdJson = json['failureThreshold'];
    final tempGrpcJson = json['grpc'];
    final tempHttpGetJson = json['httpGet'];
    final tempInitialDelaySecondsJson = json['initialDelaySeconds'];
    final tempPeriodSecondsJson = json['periodSeconds'];
    final tempSuccessThresholdJson = json['successThreshold'];
    final tempTcpSocketJson = json['tcpSocket'];
    final tempTerminationGracePeriodSecondsJson =
        json['terminationGracePeriodSeconds'];
    final tempTimeoutSecondsJson = json['timeoutSeconds'];

    final tempExec =
        tempExecJson != null ? ExecAction.fromJson(tempExecJson) : null;
    final tempFailureThreshold = tempFailureThresholdJson;
    final tempGrpc =
        tempGrpcJson != null ? GRPCAction.fromJson(tempGrpcJson) : null;
    final tempHttpGet = tempHttpGetJson != null
        ? HTTPGetAction.fromJson(tempHttpGetJson)
        : null;
    final tempInitialDelaySeconds = tempInitialDelaySecondsJson;
    final tempPeriodSeconds = tempPeriodSecondsJson;
    final tempSuccessThreshold = tempSuccessThresholdJson;
    final tempTcpSocket = tempTcpSocketJson != null
        ? TCPSocketAction.fromJson(tempTcpSocketJson)
        : null;
    final tempTerminationGracePeriodSeconds =
        tempTerminationGracePeriodSecondsJson;
    final tempTimeoutSeconds = tempTimeoutSecondsJson;

    return Probe(
      exec: tempExec,
      failureThreshold: tempFailureThreshold,
      grpc: tempGrpc,
      httpGet: tempHttpGet,
      initialDelaySeconds: tempInitialDelaySeconds,
      periodSeconds: tempPeriodSeconds,
      successThreshold: tempSuccessThreshold,
      tcpSocket: tempTcpSocket,
      terminationGracePeriodSeconds: tempTerminationGracePeriodSeconds,
      timeoutSeconds: tempTimeoutSeconds,
    );
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

  /// Converts a [Probe] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExec = exec;
    final tempFailureThreshold = failureThreshold;
    final tempGrpc = grpc;
    final tempHttpGet = httpGet;
    final tempInitialDelaySeconds = initialDelaySeconds;
    final tempPeriodSeconds = periodSeconds;
    final tempSuccessThreshold = successThreshold;
    final tempTcpSocket = tcpSocket;
    final tempTerminationGracePeriodSeconds = terminationGracePeriodSeconds;
    final tempTimeoutSeconds = timeoutSeconds;

    if (tempExec != null) {
      jsonData['exec'] = tempExec.toJson();
    }

    if (tempFailureThreshold != null) {
      jsonData['failureThreshold'] = tempFailureThreshold;
    }

    if (tempGrpc != null) {
      jsonData['grpc'] = tempGrpc.toJson();
    }

    if (tempHttpGet != null) {
      jsonData['httpGet'] = tempHttpGet.toJson();
    }

    if (tempInitialDelaySeconds != null) {
      jsonData['initialDelaySeconds'] = tempInitialDelaySeconds;
    }

    if (tempPeriodSeconds != null) {
      jsonData['periodSeconds'] = tempPeriodSeconds;
    }

    if (tempSuccessThreshold != null) {
      jsonData['successThreshold'] = tempSuccessThreshold;
    }

    if (tempTcpSocket != null) {
      jsonData['tcpSocket'] = tempTcpSocket.toJson();
    }

    if (tempTerminationGracePeriodSeconds != null) {
      jsonData['terminationGracePeriodSeconds'] =
          tempTerminationGracePeriodSeconds;
    }

    if (tempTimeoutSeconds != null) {
      jsonData['timeoutSeconds'] = tempTimeoutSeconds;
    }

    return jsonData;
  }
}
