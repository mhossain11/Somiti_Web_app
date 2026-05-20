import 'package:flutter/material.dart';
import 'package:somiti_app/features/home/presentation/widgets/summary_card.dart';
import 'package:somiti_app/responsive.dart';

class SummaryGridItems extends StatelessWidget {
  const SummaryGridItems({super.key});

  @override
  Widget build(BuildContext context) {

    double cardWidth = 260;

    if (Responsive.isLargeScreen(context)) {
      cardWidth = 240;
    } else if (Responsive.isTablet(context)) {
      cardWidth = MediaQuery.of(context).size.width / 2 - 32;
    } else {
      cardWidth = double.infinity;
    }

    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [

        SummaryCard(
          width: cardWidth,
          title: "Monthly Savings",
          amount: "৳5,000",
          subtitle: "This month",
          status: "↗ 12% from last month",
          icon: Icons.savings_outlined,
          iconBg: const Color(0xffDBEAFE),
          iconColor: const Color(0xff2563EB),
        ),

        SummaryCard(
          width: cardWidth,
          title: "This Month Expense",
          amount: "৳3,300",
          subtitle: "April 2024",
          status: "↗ -5% from last month",
          icon: Icons.trending_down,
          iconBg: const Color(0xffFEE2E2),
          iconColor: const Color(0xffDC2626),
        ),

        SummaryCard(
          width: cardWidth,
          title: "Savings Goal",
          amount: "73%",
          subtitle: "Target: ৳75,000",
          status: "↗ On track",
          icon: Icons.track_changes,
          iconBg: const Color(0xffDCFCE7),
          iconColor: const Color(0xff16A34A),
        ),

        SummaryCard(
          width:cardWidth,
          title: "Member Since",
          amount: "15 Months",
          subtitle: "Jan 2023",
          status: "",
          icon: Icons.calendar_month_outlined,
          iconBg: const Color(0xffF3E8FF),
          iconColor: const Color(0xff9333EA),
        ),
      ],
    );
  }
}