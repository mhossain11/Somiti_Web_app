import 'package:flutter/material.dart';
import 'package:somiti_app/features/profile/presentation/widgets/profileCard.dart';

import '../../../../responsive.dart';
import '../../../home/presentation/widgets/customappbar.dart';
import '../widgets/account_details_card.dart';
import '../widgets/header_section.dart';
import '../widgets/personalinfoCard.dart';
import '../widgets/security_settings_card.dart';

/*


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
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
               Expanded(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: PersonalInformationCard(),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: AccountDetailsCard(),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: SecuritySettingsCard(),
                     ),
                   ],
                 ),
               )
             ],
           ),

        
          ],
        ),
      ),

    );
  }
}
*/

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery
        .of(context)
        .size
        .width < 768;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (Responsive.isLargeScreen(context))
              CustomAppBar(
                onMenuTap: () {},
              ),

            const HeaderSection(),

            isMobile
                ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ProfileCard(),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: PersonalInformationCard(),
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: AccountDetailsCard(),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SecuritySettingsCard(),
                ),
              ],
            )
                : Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 320,
                    child: ProfileCard(),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      children: [
                        PersonalInformationCard(),

                        const SizedBox(height: 16),

                        AccountDetailsCard(),

                        const SizedBox(height: 16),

                        SecuritySettingsCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
