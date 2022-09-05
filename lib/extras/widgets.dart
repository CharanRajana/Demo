import 'package:flutter/material.dart';

class PBlock extends StatelessWidget {
  const PBlock({
    super.key,
    required this.l,
    required this.r,
  });

  final String l;
  final double r;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(l),
        Row(
          children: [
            Icon(
              r < 0 ? Icons.arrow_drop_down : Icons.arrow_drop_up,
              color: r < 0 ? Colors.red : Colors.green,
            ),
            Text(
              r.abs().toStringAsFixed(2),
            ),
          ],
        )
      ],
    );
  }
}

class OBlock extends StatelessWidget {
  const OBlock({
    super.key,
    required this.l,
    required this.r,
  });

  final String l;
  final String r;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(l),
        Text(r),
      ],
    );
  }
}
