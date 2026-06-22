import 'package:flutter/material.dart';

import 'infofield.dart';

class PersonalInformationCard extends StatelessWidget {
  PersonalInformationCard({super.key});

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();

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
                Icon(
                  Icons.person_outline,
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 8),
                Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: InfoField(
                    label: 'Full Name',
                    hint: Text('Rahim Uddin'),
                    icon: Icons.person_outline,
                    controller: nameController,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InfoField(
                    label: 'Phone Number',
                    hint: Text('01711-234567'),
                    icon: Icons.phone_outlined,
                    controller: phoneController,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: InfoField(
                    label: 'Email Address',
                    hint: Text('rahim@gmail.com'),
                    icon: Icons.mail_outline,
                    controller: emailController,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InfoField(
                    label: 'Home Address',
                    hint: Text('Mirpur-10, Dhaka-1216'),
                    icon: Icons.location_on_outlined,
                    controller: addressController,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}