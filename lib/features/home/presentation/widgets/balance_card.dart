import 'package:flutter/material.dart';
import 'package:somiti_app/features/home/presentation/widgets/smallinfo_card.dart';

import '../../../../responsive.dart';
import 'balanceinfo.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: EdgeInsets.all(isMobile ? 14 : 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff244677),
            Color(0xff2453D6),
            Color(0xff0894B2),
          ],
        ),
      ),

      // MOBILE
      child: isMobile
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BalanceInfo(),

          const SizedBox(height: 24),

          Row(
            children: const [
              Expanded(
                child: SmallInfoCard(
                  title: "Deposited",
                  amount: "৳60,000",
                  icon: Icons.trending_up,
                  iconBg: Color(0xff31C48D),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: SmallInfoCard(
                  title: "Expenses",
                  amount: "৳17,500",
                  icon: Icons.trending_down,
                  iconBg: Color(0xffA78BFA),
                ),
              ),
            ],
          ),
        ],
      )

      // TABLET + DESKTOP
          : Row(
        children: [
          const Expanded(
            flex: 2,
            child: BalanceInfo(),
          ),

          const SizedBox(width: 20),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SmallInfoCard(
                  title: "Total Deposited",
                  amount: "৳60,000",
                  icon: Icons.trending_up,
                  iconBg: Color(0xff31C48D),
                ),
                SizedBox(height: 14),
                SmallInfoCard(
                  title: "Total Expenses",
                  amount: "৳17,500",
                  icon: Icons.trending_down,
                  iconBg: Color(0xffA78BFA),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


