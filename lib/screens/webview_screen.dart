import 'package:flutter/material.dart';
import 'package:sandbox/widgets/sheets/webview_bottom_sheet_menu.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatefulWidget {
  const WebviewScreen({super.key});

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    // ..setNavigationDelegate(
    //   NavigationDelegate(
    //     onProgress: (int progress) {
    //       // Update loading bar.
    //     },
    // onPageStarted: (String url) {},
    // onPageFinished: (String url) {},
    // onHttpError: (HttpResponseError error) {},
    // onWebResourceError: (WebResourceError error) {},
    // onNavigationRequest: (NavigationRequest request) {
    //   if (request.url.startsWith('https://www.youtube.com/')) {
    //     return NavigationDecision.prevent;
    //   }
    //   return NavigationDecision.navigate;
    // },
    // ),
    // )
    ..loadRequest(Uri.parse('https://x.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("X (formerly Twitter)"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (ctx) => WebviewMenuBottomSheet(),
              );
            },
          ),
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
