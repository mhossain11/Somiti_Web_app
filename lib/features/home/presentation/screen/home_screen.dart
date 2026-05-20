import 'package:flutter/material.dart';
import 'package:somiti_app/features/home/presentation/widgets/customappbar.dart';
import 'package:somiti_app/responsive.dart';
import '../widgets/appskidedrawer.dart';
import '../widgets/balance_card.dart';
import '../widgets/home_content.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  int selectedIndex = 0;
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: drawerKey,

      drawer: Responsive.isMobile(context)
          ? SizedBox(
        width: 258,
        child: AppSideDrawer(
          isExpanded: true,
          onToggle: () {},
        ),
      )
          : null,

      body: Responsive.isLargeScreen(context)
          ?
      //WEB
      Row(
        children: [
          AppSideDrawer(
            isExpanded: isExpanded,
            onToggle: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
          Expanded(
            child: HomeContent(drawerKey: drawerKey,),
          ),
        ],
      )
          :
      //Mobile
      Column(
        children: [
          CustomAppBar(
            onMenuTap: () {
              drawerKey.currentState?.openDrawer();
            },
          ),
          Expanded(child: HomeContent(drawerKey: drawerKey,),)

        ],
      ),
    );
  }
}



