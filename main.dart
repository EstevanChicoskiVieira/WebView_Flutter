import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp( //diasferreiraadvogados.com.br/
    MaterialApp(
      home: HomePage("https://prospectageo.com/"), //loja.reptecstore.com.br/ kwin.com.br/
    )
  );
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String url;

  HomePage(this.url, {super.key});

  @override
  State<HomePage> createState() => _HomePageState(url);
}

class _HomePageState extends State<HomePage> {

  String url = "";

  _HomePageState(this.url);

  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
