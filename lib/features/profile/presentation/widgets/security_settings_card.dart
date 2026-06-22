import 'package:flutter/material.dart';

class SecuritySettingsCard extends StatelessWidget {
  const SecuritySettingsCard({super.key});

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
            const Text(
              "Security Settings",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 24),

            _securityRow(
              title: "Password",
              subtitle: "Last changed 3 months ago",
              buttonText: "Change",
              buttonColor: Colors.white,
              textColor: const Color(0xFF1E293B),
            ),

            const Divider(height: 32),

            _securityRow(
              title: "Two-Factor Auth",
              subtitle: "Not enabled",
              buttonText: "Enable",
              buttonColor: const Color(0xFF2952E3),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _securityRow({
    required String title,
    required String subtitle,
    required String buttonText,
    required Color buttonColor,
    required Color textColor,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 38,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: buttonColor,
              foregroundColor: textColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Text(buttonText),
          ),
        ),
      ],
    );
  }
}