import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';

class ReplicaSetViewPage extends StatefulWidget {
  const ReplicaSetViewPage({
    required this.replicaset,
    Key? key,
  }) : super(key: key);

  final ReplicaSet replicaset;

  @override
  State<ReplicaSetViewPage> createState() => _ReplicaSetViewPageState();
}

class _ReplicaSetViewPageState extends State<ReplicaSetViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReplicaSet ${widget.replicaset.metadata?.name}'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child:
                  Text('ReplicaSet Name: ${widget.replicaset.metadata?.name}'),
            ),
          ),
        ],
      ),
    );
  }
}
