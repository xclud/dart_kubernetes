import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:yakc/views/object_meta_widget.dart';

class ServiceViewPage extends StatefulWidget {
  const ServiceViewPage({
    required this.service,
    Key? key,
  }) : super(key: key);

  final Service service;

  @override
  State<ServiceViewPage> createState() => _ServiceViewPageState();
}

class _ServiceViewPageState extends State<ServiceViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: ObjectMetaWidget(metadata: widget.service.metadata!),
            ),
          ),
        ],
      ),
    );
  }
}
