import 'package:kubernetes/src/generated/api/core/v1/exec_action.dart';
import 'package:kubernetes/src/generated/api/core/v1/http_get_action.dart';
import 'package:kubernetes/src/generated/api/core/v1/tcp_socket_action.dart';

/// Handler defines a specific action that should be taken.
class Handler {
  /// The main constructor.
  const Handler({
    this.exec,
    this.httpGet,
    this.tcpSocket,
  });

  /// Creates a Handler from JSON data.
  Handler.fromJson(Map<String, dynamic> json)
      : this(
          exec: json['exec'] != null ? ExecAction.fromJson(json['exec']) : null,
          httpGet: json['httpGet'] != null
              ? HTTPGetAction.fromJson(json['httpGet'])
              : null,
          tcpSocket: json['tcpSocket'] != null
              ? TCPSocketAction.fromJson(json['tcpSocket'])
              : null,
        );

  /// Creates a list of Handler from JSON data.
  static List<Handler> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Handler.fromJson(e)).toList();
  }

  /// Converts a Handler instance to JSON data.
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

  /// One and only one of the following should be specified. Exec specifies the action to take.
  final ExecAction? exec;

  /// HTTPGet specifies the http request to perform.
  final HTTPGetAction? httpGet;

  /// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported.
  final TCPSocketAction? tcpSocket;
}
