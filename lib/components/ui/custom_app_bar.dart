import 'package:flutter/material.dart';
import 'package:tugas_1/config/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onDrawerButtonPressed;

  const CustomAppBar(
      {super.key, required this.title, this.onDrawerButtonPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20,
            color: AppColors.surface,
            fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      // leading: IconButton(
      //     onPressed: () =>
      //         onDrawerButtonPressed ?? () => Scaffold.of(context).openDrawer(),
      //     icon: const Icon(Icons.menu)),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFFD0574E), Color(0xFFE57373)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
