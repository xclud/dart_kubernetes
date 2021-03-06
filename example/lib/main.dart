import 'package:yakc/helpers/skip_tls_verify.dart';
import 'package:yakc/pages/cluster_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  skipTlsVerify();

  runApp(const KubernetesApp());
}

class KubernetesApp extends StatelessWidget {
  const KubernetesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kubernetes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          border: OutlineInputBorder(),
        ),
      ),
      home: const ClusterListPage(),
    );
  }
}
