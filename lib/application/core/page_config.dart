import 'package:flutter/material.dart';

//Here we define a class whose instances that will hold information for any
// created page.

class PageConfig{
  final String name;
  final Widget? child;

  const PageConfig({
    required this.name,
    Widget? child,
  }): child = child ?? const Placeholder();
}
