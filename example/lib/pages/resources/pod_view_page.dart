import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:yakc/views/object_meta_widget.dart';

class PodViewPage extends StatefulWidget {
  const PodViewPage({
    required this.pod,
    Key? key,
  }) : super(key: key);

  final Pod pod;

  @override
  State<PodViewPage> createState() => _PodViewPageState();
}

class _PodViewPageState extends State<PodViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pod'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: ObjectMetaWidget(metadata: widget.pod.metadata!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Column(
                children: widget.pod.spec!.containers
                    .map(
                      (e) => ListTile(
                        title: Text(e.name),
                        subtitle: Text(e.image ?? ''),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
