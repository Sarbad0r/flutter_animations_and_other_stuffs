import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final TextEditingController _channelController = TextEditingController(text: '');
  bool _validateError = false;
  ClientRole? _role = ClientRole.Broadcaster;

  @override
  void dispose() {
    _channelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agora"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNXJ_1WHQ6XvWhER-oh1WgQEAI8FSlVPRPcm40_ZJdqw&s"),
              const SizedBox(height: 20),
              TextField(
                controller: _channelController,
                decoration: InputDecoration(
                  errorText: _validateError ? "Channel name is error" : null,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                  hintText: "Channel name",
                ),
              ),
              RadioListTile<ClientRole?>(
                value: ClientRole.Broadcaster,
                groupValue: _role,
                onChanged: (ClientRole? value) {
                  setState(() {
                    _role = value;
                  });
                },
              ),
              RadioListTile<ClientRole?>(
                value: ClientRole.Audience,
                groupValue: _role,
                onChanged: (ClientRole? value) {
                  setState(() {
                    _role = value;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
