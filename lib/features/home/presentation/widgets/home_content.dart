import 'package:flutter/material.dart';
import 'package:somiti_app/features/home/presentation/widgets/recentTransactionsCard.dart';
import 'package:somiti_app/features/home/presentation/widgets/savings_overview_section.dart';
import 'package:somiti_app/features/home/presentation/widgets/summary_grid_items.dart';

import '../../../../responsive.dart';
import 'balance_card.dart';
import 'customappbar.dart';

class HomeContent extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey;
  final VoidCallback? onMenuTap;

  const HomeContent({super.key,
    required this.drawerKey, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Responsive.isLargeScreen(context)?
                CustomAppBar(
                  onMenuTap: onMenuTap!,): SizedBox(),
                SizedBox(height: 4),
                Text(
                  'Good morning, Rahim!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Here's your savings overview for April 2024",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 10),
                BalanceCard(),
                SummaryGridItems(),
                SizedBox(height: 10),
                SavingsOverviewSection(),
                SizedBox(height: 10),
                RecentTransactionsCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}