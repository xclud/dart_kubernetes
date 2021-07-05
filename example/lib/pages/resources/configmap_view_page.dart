import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';

class ConfigMapViewPage extends StatefulWidget {
  const ConfigMapViewPage({
    required this.configmap,
    Key? key,
  }) : super(key: key);

  final ConfigMap configmap;

  @override
  State<ConfigMapViewPage> createState() => _ConfigMapViewPageState();
}

class _ConfigMapViewPageState extends State<ConfigMapViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConfigMap ${widget.configmap.metadata?.name}'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Text('ConfigMap Name: ${widget.configmap.metadata?.name}'),
            ),
          ),
        ],
      ),
    );
  }
}
