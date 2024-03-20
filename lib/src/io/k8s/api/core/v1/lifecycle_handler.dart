// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
class LifecycleHandler {
  /// Default constructor.
  const LifecycleHandler({
    this.exec,
    this.httpGet,
    this.tcpSocket,
  });

  /// Creates a [LifecycleHandler] from JSON data.
  factory LifecycleHandler.fromJson(Map<String, dynamic> json) {
    final tempExecJson = json['exec'];
    final tempHttpGetJson = json['httpGet'];
    final tempTcpSocketJson = json['tcpSocket'];

    final ExecAction? tempExec =
        tempExecJson != null ? ExecAction.fromJson(tempExecJson) : null;
    final HTTPGetAction? tempHttpGet = tempHttpGetJson != null
        ? HTTPGetAction.fromJson(tempHttpGetJson)
        : null;
    final TCPSocketAction? tempTcpSocket = tempTcpSocketJson != null
        ? TCPSocketAction.fromJson(tempTcpSocketJson)
        : null;

    return LifecycleHandler(
      exec: tempExec,
      httpGet: tempHttpGet,
      tcpSocket: tempTcpSocket,
    );
  }

  /// Exec specifies the action to take.
  final ExecAction? exec;

  /// HTTPGet specifies the http request to perform.
  final HTTPGetAction? httpGet;

  /// Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward compatibility. There are no validation of this field and lifecycle hooks will fail in runtime when tcp handler is specified.
  final TCPSocketAction? tcpSocket;

  /// Converts a [LifecycleHandler] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExec = exec;
    final tempHttpGet = httpGet;
    final tempTcpSocket = tcpSocket;

    if (tempExec != null) {
      jsonData['exec'] = tempExec.toJson();
    }

    if (tempHttpGet != null) {
      jsonData['httpGet'] = tempHttpGet.toJson();
    }

    if (tempTcpSocket != null) {
      jsonData['tcpSocket'] = tempTcpSocket.toJson();
    }

    return jsonData;
  }
}
