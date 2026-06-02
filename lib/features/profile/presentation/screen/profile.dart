import 'package:flutter/material.dart';
import 'package:somiti_app/features/profile/presentation/widgets/profileCard.dart';

import '../../../../responsive.dart';
import '../../../home/presentation/widgets/customappbar.dart';
import '../widgets/header_section.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Responsive.isLargeScreen(context)?
          CustomAppBar(
            onMenuTap:(){},): SizedBox(),
          HeaderSection(),

         Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: ProfileCard(),
             ),
           ],
         )

        ],
      ),

    );
  }
}
