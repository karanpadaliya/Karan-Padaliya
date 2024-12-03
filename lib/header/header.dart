import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: const Text("Karan Padaliya"),
        actions: [
          const SizedBox(width: 20),
          CustomTextButton(
            label: "Home",
            onPressed: () {},
          ),
          CustomTextButton(
            label: "About",
            onPressed: () {},
          ),
          CustomTextButton(
            label: "Education",
            onPressed: () {},
          ),
          CustomTextButton(
            label: "Skills",
            onPressed: () {},
          ),
          CustomTextButton(
            label: "Certification",
            onPressed: () {},
          ),
          CustomTextButton(
            label: "Project",
            onPressed: () {},
          ),
          CustomTextButton(
            label: "Services",
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.cyan),
              shape: WidgetStateProperty.all(
                ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: const Text(
              "Contact",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  CustomTextButton({super.key, required this.label, required this.onPressed});

  RxBool isHovered = false.obs; // Independent hover state for each button.

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: Obx(
        () => Container(
          margin: const EdgeInsets.only(left: 6.0, right: 6.0),
          decoration: BoxDecoration(
            border: isHovered.value
                ? const Border(bottom: BorderSide(color: Colors.cyan, width: 2))
                : null,
          ),
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                color: isHovered.value ? Colors.cyan : Colors.white,
                fontSize: 16,
                fontWeight: isHovered.value ? FontWeight.bold : FontWeight.w500,
                letterSpacing: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
