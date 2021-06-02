import 'handler.dart';

class Lifecycle {
  Lifecycle({this.postStart, this.preStop});

  final Handler? postStart;
  final Handler? preStop;
}
