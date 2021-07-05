import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';

class DeploymentViewPage extends StatefulWidget {
  const DeploymentViewPage({
    required this.deployment,
    Key? key,
  }) : super(key: key);

  final Deployment deployment;

  @override
  State<DeploymentViewPage> createState() => _DeploymentViewPageState();
}

class _DeploymentViewPageState extends State<DeploymentViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deployment ${widget.deployment.metadata?.name}'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child:
                  Text('Deployment Name: ${widget.deployment.metadata?.name}'),
            ),
          ),
        ],
      ),
    );
  }
}
