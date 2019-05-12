import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final Widget child;
  const ReusableCard({@required this.color, this.child, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
