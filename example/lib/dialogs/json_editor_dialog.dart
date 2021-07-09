import 'package:flutter/material.dart';

class JsonEditorDialog extends StatefulWidget {
  const JsonEditorDialog({
    Key? key,
    required this.json,
  }) : super(key: key);

  final String json;

  @override
  State<StatefulWidget> createState() => _JsonEditorDialogState();
}

class _JsonEditorDialogState extends State<JsonEditorDialog> {
  final _jsonController = TextEditingController();

  @override
  void initState() {
    _jsonController.text = widget.json;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON Editor'),
        actions: [
          IconButton(
            icon: const Icon(Icons.copy),
            tooltip: 'Copy',
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(Icons.paste),
            tooltip: 'Paste',
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(Icons.check),
            tooltip: 'Ok',
            onPressed: () {
              Navigator.of(context).pop(_jsonController.text);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLines: null,
          controller: _jsonController,
        ),
      ),
    );
  }
}
