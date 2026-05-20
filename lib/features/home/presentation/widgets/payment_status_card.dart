import 'package:flutter/material.dart';

class PaymentStatusCard extends StatelessWidget {
  const PaymentStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: _cardDecoration(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Status",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 18),

          PaymentItem(title: "April Savings", date: "01 Apr", amount: "৳5,000", status: "Paid", isPaid: true),
          PaymentItem(title: "March Savings", date: "01 Mar", amount: "৳5,000", status: "Paid", isPaid: true),
          PaymentItem(title: "Feb Savings", date: "01 Feb", amount: "৳5,000", status: "Paid", isPaid: true),
          PaymentItem(title: "May Savings", date: "Due 01 May", amount: "৳5,000", status: "Upcoming", isPaid: false),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}

class PaymentItem extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final String status;
  final bool isPaid;

  const PaymentItem({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.status,
    required this.isPaid,
  });

  @override
  Widget build(BuildContext context) {
    final color = isPaid ? const Color(0xff22C55E) : const Color(0xffF59E0B);

    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          CircleAvatar(radius: 4, backgroundColor: color),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(date, style: const TextStyle(fontSize: 12, color: Color(0xff94A3B8))),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount, style: const TextStyle(fontWeight: FontWeight.w700)),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: isPaid ? const Color(0xffDCFCE7) : const Color(0xffFEF3C7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: color,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}