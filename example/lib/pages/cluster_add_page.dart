import 'package:yakc/helpers/cluster_store.dart';
import 'package:yakc/models.dart';
import 'package:flutter/material.dart';

class ClusterAddPage extends StatefulWidget {
  const ClusterAddPage({Key? key}) : super(key: key);

  @override
  State<ClusterAddPage> createState() => _ClusterAddPageState();
}

class _ClusterAddPageState extends State<ClusterAddPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _serverController = TextEditingController();
  final _jwtController = TextEditingController();
  bool _skipTLSVerify = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Cluster'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () async {
              if (!_formKey.currentState!.validate()) {
                return;
              }

              final name = _nameController.text;
              final server = _serverController.text;
              final jwt = _jwtController.text;

              final cluster = Cluster(
                name: name,
                server: server,
                jwt: jwt,
              );

              await addCluster(cluster);

              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(4.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'My Cluster',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required.';
                  }

                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                controller: _serverController,
                decoration: const InputDecoration(
                  labelText: 'Server',
                  hintText: 'https://yourserver:6443',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required.';
                  }

                  final uri = Uri.tryParse(value);

                  if (uri == null) {
                    return 'Invalid.';
                  }

                  final scheme = uri.scheme;

                  if (scheme != 'http' && scheme != 'https') {
                    return 'Must be http or https.';
                  }

                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                controller: _jwtController,
                decoration: const InputDecoration(
                  labelText: 'Authorization Token',
                  hintText: 'eyJhbGciO...',
                ),
                maxLines: null,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required.';
                  }

                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: CheckboxListTile(
                title: const Text('Skip TLS Verify'),
                value: _skipTLSVerify,
                onChanged: (value) {
                  setState(() {
                    _skipTLSVerify = value ?? false;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
