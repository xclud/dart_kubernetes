import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:yakc/views/object_meta_widget.dart';

class StatefulSetViewPage extends StatefulWidget {
  const StatefulSetViewPage({
    required this.statefulset,
    Key? key,
  }) : super(key: key);

  final StatefulSet statefulset;

  @override
  State<StatefulSetViewPage> createState() => _StatefulSetViewPageState();
}

class _StatefulSetViewPageState extends State<StatefulSetViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulSet'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: ObjectMetaWidget(metadata: widget.statefulset.metadata!),
            ),
          ),
        ],
      ),
    );
  }
}
