import 'package:flutter/material.dart';

class NextPaymentDueCard extends StatelessWidget {
  const NextPaymentDueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffFFFBEB),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xffFDE68A)),
      ),
      child: Row(
        children: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: const Color(0xffFEF3C7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.access_time,
              color: Color(0xffF59E0B),
              size: 20,
            ),
          ),
          const SizedBox(width: 14),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Next Payment Due",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff92400E),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "May savings of ৳5,000 is due on 01 May 2024. Pay on time to avoid penalty.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff92400E),
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