import 'package:flutter/material.dart';

class OnHoverWidget extends StatefulWidget {
  const OnHoverWidget({super.key, required this.builder});
  final Widget Function(bool isHovered) builder;

  @override
  State<OnHoverWidget> createState() => _OnHoverWidgetState();
}

class _OnHoverWidgetState extends State<OnHoverWidget> {
  bool _isHovered = false;

  onEntered(bool value) => setState(() {
        _isHovered = value;
      });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: widget.builder(_isHovered),
    );
  }
}
