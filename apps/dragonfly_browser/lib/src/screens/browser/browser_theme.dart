import 'package:dragonfly_navigation/dragonfly_navigation.dart';
import 'package:flutter/material.dart';

class CSSOMProvider extends InheritedWidget {
  final CssomTree cssom;

  const CSSOMProvider({
    super.key,
    required this.cssom,
    required super.child,
  });

  static CSSOMProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CSSOMProvider>();
  }

  @override
  bool updateShouldNotify(CSSOMProvider oldWidget) {
    return cssom != oldWidget.cssom;
  }
}
