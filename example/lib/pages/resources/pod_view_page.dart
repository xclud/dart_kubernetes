import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';

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
