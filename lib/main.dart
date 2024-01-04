import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'my_web_view.dart';

void main(){ 
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: const Color.fromRGBO(15, 66, 66, 1)
    )

  );
  runApp(const MyApp());
  }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maroc Universel',
      theme: ThemeData(useMaterial3: true),
      home: WebViewApp(),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(Uri.parse("https://marocuniversel.com/"));
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(28.0),
        child: Container(
          height: 28,
        ),
         ),
      // appBar: AppBar(
      //   title: Text("Maroc Universel"),
      //   actions: [
      //     Row(
      //       children: [
      //         IconButton(
      //             icon: Icon(Icons.arrow_back_ios),
      //             onPressed: () async {
      //               final messenger = ScaffoldMessenger.of(context);
      //               if (await controller.canGoBack()) {
      //                 await controller.goBack();
      //               } else {
      //                 messenger.showSnackBar(
      //                     SnackBar(content: Text("No Back History Found")));
      //                 return;
      //               }
      //             },
      //             ),
      //             IconButton(
      //             icon: Icon(Icons.arrow_forward_ios),
      //             onPressed: () async {
      //               final messenger = ScaffoldMessenger.of(context);
      //               if (await controller.canGoForward()) {
      //                 await controller.goForward();
      //               } else {
      //                 messenger.showSnackBar(
      //                     SnackBar(content: Text("No Forward History Found")));
      //                 return;
      //               }
      //             },
      //             ),
      //       ],
      //     )
      //   ],
      // ),
      body: MyWebView(controller: controller, ),
    );
  }
}
