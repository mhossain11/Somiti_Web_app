import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class BalanceInfo extends StatelessWidget {
  const BalanceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Total Balance",
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: isMobile ? 14 : 16,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          "৳42,500",
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 34 : 42,
            fontWeight: FontWeight.w800,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          "Member ID: SM-001",
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: isMobile ? 13 : 15,
          ),
        ),
      ],
    );
  }
}