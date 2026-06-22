import 'package:flutter/material.dart';

import 'account_box.dart';

class AccountDetailsCard extends StatelessWidget {
  const AccountDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.credit_card_outlined,
                    color: Colors.blueAccent),
                SizedBox(width: 8),
                Text(
                  'Account Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Wrap(
              spacing: 18,
              runSpacing: 16,
              children: const [
                AccountInfoBox(
                  icon: Icons.credit_card_outlined,
                  title: 'SM-001',
                  subtitle: 'Member ID',
                  backgroundColor: Color(0xFFEFF6FF),
                  iconColor: Colors.blue,
                ),
                AccountInfoBox(
                  icon: Icons.calendar_month_outlined,
                  title: '15 Jan 2023',
                  subtitle: 'Join Date',
                  backgroundColor: Color(0xFFEFF8F1),
                  iconColor: Colors.green,
                ),
                AccountInfoBox(
                  icon: Icons.trending_up,
                  title: '৳60,000',
                  subtitle: 'Total Deposit',
                  backgroundColor: Color(0xFFF5F0FA),
                  iconColor: Colors.purple,
                ),
                AccountInfoBox(
                  icon: Icons.workspace_premium_outlined,
                  title: '৳42,500',
                  subtitle: 'Balance',
                  backgroundColor: Color(0xFFFBF4EA),
                  iconColor: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}