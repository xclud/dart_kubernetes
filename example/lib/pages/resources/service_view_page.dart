import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';

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
        title: Text('Service ${widget.service.metadata?.name}'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Text('Service Name: ${widget.service.metadata?.name}'),
            ),
          ),
        ],
      ),
    );
  }
}
