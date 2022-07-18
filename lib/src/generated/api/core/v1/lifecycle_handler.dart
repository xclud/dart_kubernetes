import 'package:kubernetes/src/generated/api/core/v1/exec_action.dart';
import 'package:kubernetes/src/generated/api/core/v1/http_get_action.dart';
import 'package:kubernetes/src/generated/api/core/v1/tcp_socket_action.dart';

/// LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
class LifecycleHandler {
  /// The main constructor.
  const LifecycleHandler({
    this.exec,
    this.httpGet,
    this.tcpSocket,
  });

  /// Creates a LifecycleHandler from JSON data.
  LifecycleHandler.fromJson(Map<String, dynamic> json)
      : this(
          exec: json['exec'] != null ? ExecAction.fromJson(json['exec']) : null,
          httpGet: json['httpGet'] != null
              ? HTTPGetAction.fromJson(json['httpGet'])
              : null,
          tcpSocket: json['tcpSocket'] != null
              ? TCPSocketAction.fromJson(json['tcpSocket'])
              : null,
        );

  /// Creates a list of LifecycleHandler from JSON data.
  static List<LifecycleHandler> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LifecycleHandler.fromJson(e)).toList();
  }

  /// Converts a LifecycleHandler instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (exec != null) {
      jsonData['exec'] = exec!.toJson();
    }
    if (httpGet != null) {
      jsonData['httpGet'] = httpGet!.toJson();
    }
    if (tcpSocket != null) {
      jsonData['tcpSocket'] = tcpSocket!.toJson();
    }

    return jsonData;
  }

  /// Exec specifies the action to take.
  final ExecAction? exec;

  /// HTTPGet specifies the http request to perform.
  final HTTPGetAction? httpGet;

  /// Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward compatibility. There are no validation of this field and lifecycle hooks will fail in runtime when tcp handler is specified.
  final TCPSocketAction? tcpSocket;
}
