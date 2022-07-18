import 'package:flutter/material.dart';
import 'package:kubernetes/istio_v1beta1.dart';
import 'package:yakc/views/object_meta_widget.dart';

class GatewayViewPage extends StatefulWidget {
  const GatewayViewPage({
    required this.gateway,
    Key? key,
  }) : super(key: key);

  final Gateway gateway;

  @override
  State<GatewayViewPage> createState() => _GatewayViewPageState();
}

class _GatewayViewPageState extends State<GatewayViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gateway'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: ObjectMetaWidget(metadata: widget.gateway.metadata!),
            ),
          ),
        ],
      ),
    );
  }
}
