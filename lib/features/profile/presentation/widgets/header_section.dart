import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("My Profile",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                Text('Manage your personal information and account settings',style: TextStyle(fontSize: 12,color: Color(0xff64748B)),),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.edit, size: 18),
            label: const Text("Edit Profile"),
          ),
        ),

      ],
    );
  }
}
