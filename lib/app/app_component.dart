
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fluro_demo/config/application.dart';
import 'package:flutter_fluro_demo/config/routes.dart';

/**
 * 主界面
 */
class AppComponent extends StatefulWidget {
  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {
  AppComponentState() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Fluro框架',
      debugShowCheckedModeBanner: false, //隐藏测试
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,//注册路由
    );
    return app; //跳转主页
  }
}
