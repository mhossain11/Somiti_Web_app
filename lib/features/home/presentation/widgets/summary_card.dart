import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class SummaryCard extends StatelessWidget {
  final double width;
  final String title;
  final String amount;
  final String subtitle;
  final String status;
  final IconData icon;
  final Color iconBg;
  final Color iconColor;

  const SummaryCard({
    super.key,
    required this.width,
    required this.title,
    required this.amount,
    required this.subtitle,
    required this.status,
    required this.icon,
    required this.iconBg,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment:Responsive.isLargeScreen(context)?
            MainAxisAlignment.spaceAround : MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Text(title, style: const TextStyle(fontSize: 14)),
              const SizedBox(height: 6),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff020617),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xff64748B),
                ),
              ),
              const SizedBox(height: 8),
              if (status.isNotEmpty)
                Text(
                  status,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff16A34A),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              if (status.isEmpty)
                SizedBox(height: 14,)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
        ],
      ),
    );
  }
}