import 'package:flutter/material.dart';
import 'package:kubernetes/core_v1.dart';
import 'package:yakc/views/object_meta_widget.dart';

class SecretViewPage extends StatefulWidget {
  const SecretViewPage({
    required this.secret,
    Key? key,
  }) : super(key: key);

  final Secret secret;

  @override
  State<SecretViewPage> createState() => _SecretViewPageState();
}

class _SecretViewPageState extends State<SecretViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secret'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: ObjectMetaWidget(metadata: widget.secret.metadata!),
            ),
          ),
          if (widget.secret.data.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: widget.secret.data.entries
                      .map(
                        (e) => ListTile(
                          title: Text(e.key),
                          subtitle: Text(e.value),
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
