import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StoryDetailsScreen extends StatefulWidget {
  const StoryDetailsScreen({
    super.key,
    required this.title,
    required this.content,
  });

  final String title, content;

  @override
  State<StoryDetailsScreen> createState() => _StoryDetailsScreenState();
}

class _StoryDetailsScreenState extends State<StoryDetailsScreen> {
  late WebViewController _controller;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadHtmlString("""

<!DOCTYPE html>
<html lang="en">
<style>
body {
  background-color: #eee;
}
</style>
<body>

${widget.content}

</body>
</html>
""");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}
