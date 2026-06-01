import 'package:flutter/material.dart';

import '../../domains/models/transactionModel.dart';

class RecentTransactionsCard extends StatelessWidget {
  const RecentTransactionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionModel(
        title: "Monthly Savings",
        subtitle: "April savings · 01 Apr 2024",
        amount: "+৳5,000",
        type: TransactionType.income,
      ),
      TransactionModel(
        title: "Food",
        subtitle: "Eid celebration meal · 10 Apr 2024",
        amount: "-৳2,500",
        type: TransactionType.expense,
      ),
      TransactionModel(
        title: "Monthly Savings",
        subtitle: "March savings · 01 Mar 2024",
        amount: "+৳5,000",
        type: TransactionType.income,
      ),
      TransactionModel(
        title: "Utilities",
        subtitle: "Group meeting electricity · 15 Mar 2024",
        amount: "-৳800",
        type: TransactionType.expense,
      ),
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
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
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Recent Transactions",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("View all →"),
              ),
            ],
          ),

          const SizedBox(height: 18),

          ...transactions.map(
                (item) => TransactionTile(transaction: item),
          ),
        ],
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionTile({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    final isIncome = transaction.type == TransactionType.income;

    final iconBg = isIncome
        ? const Color(0xffDCFCE7)
        : const Color(0xffFEE2E2);

    final color = isIncome
        ? const Color(0xff16A34A)
        : const Color(0xffDC2626);

    final icon = isIncome
        ? Icons.south_west
        : Icons.north_east;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: color, size: 20),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  transaction.subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff64748B),
                  ),
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                transaction.amount,
                style: TextStyle(
                  color: color,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffDCFCE7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "success",
                  style: TextStyle(
                    color: Color(0xff16A34A),
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

