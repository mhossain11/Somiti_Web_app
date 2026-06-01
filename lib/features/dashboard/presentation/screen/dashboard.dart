import 'package:flutter/material.dart';
import 'package:somiti_app/features/home/presentation/widgets/customappbar.dart';
import 'package:somiti_app/responsive.dart';

import '../../../home/presentation/widgets/appskidedrawer.dart';
import '../../../home/presentation/screen/home_content.dart';




class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  int selectedIndex = 0;
  bool isExpanded = true;

  Widget getCurrentPage() {
    switch (selectedIndex) {
      case 0:
        return HomeContent(drawerKey: drawerKey,
          onMenuTap: (){
            if (Responsive.isLargeScreen(context)) {
              setState(() {
                isExpanded = !isExpanded;
              });
            } else {
              drawerKey.currentState?.openDrawer();
            }
        },);
      case 1:
        return const Center(child: Text("Profile Page"));
      case 2:
        return const Center(child: Text("Expense History Page"));
      case 3:
        return const Center(child: Text("Transactions Page"));
      case 4:
        return const Center(child: Text("Notifications Page"));
      default:
        return HomeContent(drawerKey: drawerKey);
    }
  }

  void changePage(int index) {
    setState(() {
      selectedIndex = index;
    });

    if (Responsive.isMobile(context)) {
      drawerKey.currentState?.closeDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: drawerKey,

      drawer: Responsive.isMobile(context)
          ? SizedBox(
        width: 258,
        child: AppSideDrawer(
          isExpanded: true,
          onToggle: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          selectedIndex: selectedIndex,
          onItemSelected: changePage,
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
            }, selectedIndex: selectedIndex,
            onItemSelected:changePage,
          ),

          Expanded(
            child: getCurrentPage(),
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
          Expanded(child: getCurrentPage(),)

        ],
      ),
    );
  }
}




