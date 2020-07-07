
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String root = "/";//根路径
  static String demoSimple = "/demo"; //路径地址
  static String demoSimpleFixedTrans = "/demo/fixedtrans"; //路径地址
  static String demoFunc = "/demo/func"; //路径地址
  static String deepLink = "/message"; //路径地址

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        // ignore: missing_return
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("ERROR====>ROUTE WAS NOT FONUND!!!");
    });
    router.define(root, handler: rootHandler);
    router.define(demoSimple, handler: demoRouteHandler);
    router.define(demoSimpleFixedTrans, handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);//左侧进入
    router.define(demoFunc, handler: demoFunctionHandler);
    router.define(deepLink, handler: deepLinkHandler);
  }
}
