import "package:flutter/material.dart";

class mytab extends StatelessWidget {
  final String iconPath;
  const mytab({super.key, required this.iconPath});

  @override
  Widget Build(BuildContext context) {
    return Tab(
      child: Container(
        color: Colors.grey[600],
        child: Image.asset(iconPath),
      )
    );
  }
}