import 'package:flutter/material.dart';
import 'package:somiti_app/features/home/presentation/widgets/member.dart';
import 'package:somiti_app/responsive.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.onMenuTap,});
  final void Function() onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Color(0xffE5E7EB)),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
            color: const Color(0xff64748B),
          ),

          const SizedBox(width: 20),

          const Text(
            "Member Portal",
            style: TextStyle(
              color: Color(0xff64748B),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),

          const Spacer(),

          Responsive.isLargeScreen(context)? Member():SizedBox(),

          const SizedBox(width: 18),

          Stack(
            children: [
              const Icon(Icons.notifications_none, color: Color(0xff334155)),
              Positioned(
                right: 1,
                top: 1,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 22),

          const CircleAvatar(
            radius: 17,
            backgroundColor: Color(0xff3B82F6),
            child: Text(
              "R",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 8),

          Responsive.isLargeScreen(context)? const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rahim",
                style: TextStyle(
                  color: Color(0xff334155),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              Text(
                "SM-001",
                style: TextStyle(
                  color: Color(0xff94A3B8),
                  fontSize: 12,
                ),
              ),
            ],
          ):SizedBox(),

          const SizedBox(width: 8),

          Responsive.isLargeScreen(context)? const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff94A3B8),
          ):SizedBox(),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}