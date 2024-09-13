
import 'package:chatappfr/core/function/linear_gradian.dart';
import 'package:chatappfr/core/util/styels.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final List<Widget>? leadingWidgets;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leadingWidgets,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: (leadingWidgets != null && leadingWidgets!.isNotEmpty)
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: leadingWidgets!,
            )
          : null,
      title: Text(
        title,
        style: Styles.textStyle16,
      ),
      centerTitle: true,
      actions: actions,
      flexibleSpace: Container(
        decoration: linearGradientMethod(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
