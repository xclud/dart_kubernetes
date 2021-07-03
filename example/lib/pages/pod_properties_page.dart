import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';

class PodPropertiesPage extends StatefulWidget {
  final Pod pod;

  const PodPropertiesPage({
    required this.pod,
    Key? key,
  }) : super(key: key);

  @override
  State<PodPropertiesPage> createState() => _PodPropertiesPageState();
}

class _PodPropertiesPageState extends State<PodPropertiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pod ${widget.pod.metadata?.name}'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Text('Pod Name: ${widget.pod.metadata?.name}'),
            ),
          ),
        ],
      ),
    );
  }
}
