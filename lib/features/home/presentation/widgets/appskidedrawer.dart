import 'package:flutter/material.dart';

class AppSideDrawer extends StatelessWidget {
  final bool isExpanded;
  final int selectedIndex;
  final Function(int) onItemSelected;
  final VoidCallback onToggle;

  const AppSideDrawer({
    super.key,
    required this.isExpanded,
    required this.onToggle,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    final double width = isExpanded ? 258 : 62;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: width,
      height: double.infinity,
      color: const Color(0xff111C2E),
      child: Column(
        children: [
          const SizedBox(height: 22),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                _logo(),

                if (isExpanded) ...[
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Somiti",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("Member Portal",
                            style: TextStyle(
                                color: Color(0xff9FB0C8), fontSize: 12)),
                      ],
                    ),
                  ),
                ],

                if (isExpanded)
                  _circleButton(Icons.chevron_left, onToggle),
              ],
            ),
          ),

          if (!isExpanded) ...[
            const SizedBox(height: 22),
            _circleButton(Icons.chevron_right, onToggle),
          ],

          const SizedBox(height: 28),
          _memberChip(),

          const SizedBox(height: 16),

          _drawerItem(
            icon: Icons.dashboard_outlined,
            title: "Dashboard",
              active: selectedIndex == 0,
            onTap: () => onItemSelected(0),
          ),
          _drawerItem(
              icon: Icons.person_outline,
              title: "Profile",
              active: selectedIndex == 1,
              onTap:() => onItemSelected(1),
          ),
          _drawerItem(
              icon: Icons.receipt_long_outlined,
              title: "Expense History",
              active: selectedIndex == 2,
              onTap:   () => onItemSelected(2),
          ),
          _drawerItem(
              icon: Icons.swap_horiz,
              title: "Transactions",
              active: selectedIndex == 3,
              onTap: () => onItemSelected(3),
          ),
          _drawerItem(
              icon: Icons.notifications_none,
              title: "Notifications",
              active: selectedIndex == 4,
              onTap: () => onItemSelected(4),
            ),

          const Spacer(),

          if (isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xff2563EB),
                    child: Text("R", style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 12),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rahim Uddin",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                      Text("SM-001",
                          style: TextStyle(
                              color: Color(0xff9FB0C8),
                              fontSize: 12)),
                    ],
                  ),
                ],
              ),
            )
          else
            const CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xff2563EB),
              child: Text("R", style: TextStyle(color: Colors.white)),
            ),

          const SizedBox(height: 24),

          _drawerItem(icon: Icons.logout, title: "Logout"),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _logo() {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: const Color(0xff2563EB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.handshake_outlined,
        color: Colors.white,
        size: 18,
      ),
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        radius: 13,
        backgroundColor: const Color(0xff26364F),
        child: Icon(icon, size: 16, color: const Color(0xffA8B6CC)),
      ),
    );
  }

  Widget _memberChip() {
    if (!isExpanded) {
      return const Icon(
        Icons.workspace_premium_outlined,
        color: Color(0xff9FB0C8),
        size: 18,
      );
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 18),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          color: const Color(0xff1D4ED8).withOpacity(0.45),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          "🏆 Member",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }

  Widget _drawerItem({
    required IconData icon,
    required String title,
    bool active = false,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isExpanded ? 13 : 0,
        vertical: 4,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 42,
          decoration: BoxDecoration(
            color: active ? const Color(0xff2563EB) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment:
            isExpanded ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              if (isExpanded) const SizedBox(width: 12),
              Icon(
                icon,
                color: active ? Colors.white : const Color(0xff9FB0C8),
                size: 20,
              ),
              if (isExpanded) ...[
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    color: active ? Colors.white : const Color(0xff9FB0C8),
                    fontWeight: active ? FontWeight.w700 : FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}