import 'package:flutter/material.dart';
import 'package:project_demo/config/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
    );
  }

  @override
  Size get preferredSize => throw Size.fromHeight(kToolbarHeight);
}
