import 'dart:io' as io;

void skipTlsVerify() {
  io.HttpOverrides.global = _HttpOverrides();
}

class _HttpOverrides extends io.HttpOverrides {
  @override
  io.HttpClient createHttpClient(io.SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (io.X509Certificate cert, String host, int port) => true;
  }
}
