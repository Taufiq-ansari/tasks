import 'package:flutter/material.dart';

class MyCustomListtile extends StatelessWidget {
  const MyCustomListtile({
    required this.index,
    this.title,
    this.subtitle,
    this.trailing,
    super.key,
    required this.onTap,
  });

  final int? index;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      splashColor: const Color.fromARGB(255, 136, 145, 137).withOpacity(0.3),
      leading: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 237, 233, 232),
        child: Text(
          "${index}",
          style: TextStyle(
            color: const Color.fromARGB(255, 118, 113, 113),
          ),
        ),
      ),
      dense: true,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
