import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 430,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Container(
                  height: 96,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff254785),
                        Color(0xff2563EB),
                        Color(0xff0891B2),
                      ],
                    ),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(14),
                    ),
                  ),
                ),

                const SizedBox(height: 52),

                const Text(
                "Rahim Uddin",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff0F172A),
                ),
              ),

                const SizedBox(height: 4),

                 const Text(
                "rahim@gmail.com",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff64748B),
                ),
              ),

                const SizedBox(height: 14),

                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  _Badge(
                    text: "Active Member",
                    bgColor: Color(0xffDCFCE7),
                    textColor: Color(0xff16A34A),
                  ),
                  SizedBox(width: 8),
                  _Badge(
                    text: "SM-001",
                    bgColor: Color(0xffDBEAFE),
                    textColor: Color(0xff2563EB),
                  ),
                ],
              ),

                const SizedBox(height: 18),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Divider(color: Color(0xffE2E8F0)),
                ),

                const SizedBox(height: 16),

                 const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _StatItem(value: "15", label: "Months"),
                  _StatItem(value: "৳42.5k", label: "Savings"),
                  _StatItem(value: "#3", label: "Rank"),
                ],
              ),
              ],
            ),

            Positioned(
              top: 58,
              child: Container(
                width: 78,
                height: 78,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff3B82F6),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white, width: 4),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: const Text(
                  "R",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}


class _Badge extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const _Badge({
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: Color(0xff0F172A),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xff94A3B8),
          ),
        ),
      ],
    );
  }
}

