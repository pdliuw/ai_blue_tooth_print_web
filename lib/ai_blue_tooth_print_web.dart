library ai_blue_tooth_print_web;

import 'dart:html' as html;

import 'package:ai_blue_tooth_print_interface/ai_blue_tooth_print_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

///
/// AiBlueToothPrintWebPlugin
class AiBlueToothPrintWebPlugin {
  /// Registers this class as the default instance of [AiBarcodeWebPlugin].
  static void registerWith(Registrar registrar) {
    // Registers plugins
    WebPluginImpl.registerWith(registrar);
  }
}

///
/// WebPluginImpl
class WebPluginImpl extends AiBlueToothPrintPlatform {
  /// Registers this class as the default instance of [AiBarcodeWebPlugin].
  static void registerWith(Registrar registrar) {
    AiBlueToothPrintPlatform.instance = WebPluginImpl();
  }

  @override
  Future<String> print({List<String> arrayInfo}) {
    html.window.print();
    return Future.delayed(Duration(seconds: 1));
  }

  @override
  Future<String> printZebra({List<String> arrayInfo}) {
    html.window.print();
    return Future.delayed(Duration(seconds: 1));
  }
}
