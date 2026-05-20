import 'package:flutter/material.dart';
import 'cumulative_savings_card.dart';
import 'payment_status_card.dart';
import 'next_payment_due_card.dart';

class SavingsOverviewSection extends StatelessWidget {
  const SavingsOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1100;

    if (isDesktop) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Expanded(flex: 2, child: CumulativeSavingsCard()),
          SizedBox(width: 20),
          SizedBox(
            width: 335,
            child: Column(
              children: [
                PaymentStatusCard(),
                SizedBox(height: 16),
                NextPaymentDueCard(),
              ],
            ),
          ),
        ],
      );
    }

    return const Column(
      children: [
        CumulativeSavingsCard(),
        SizedBox(height: 16),
        PaymentStatusCard(),
        SizedBox(height: 16),
        NextPaymentDueCard(),
      ],
    );
  }
}