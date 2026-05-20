
import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class SmallInfoCard extends StatelessWidget {
  final String title;
  final String amount;
  final IconData icon;
  final Color iconBg;

  const SmallInfoCard({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.iconBg,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      padding: EdgeInsets.all(isMobile ? 12 : 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            height: isMobile ? 38 : 42,
            width: isMobile ? 38 : 42,
            decoration: BoxDecoration(
              color: iconBg.withOpacity(0.85),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: isMobile ? 18 : 20,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: isMobile ? 11 : 12,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  amount,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}