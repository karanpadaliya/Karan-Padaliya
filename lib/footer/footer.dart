import 'package:flutter/material.dart';
import 'dart:ui'; // Required for the BackdropFilter

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('footer/back.png'), fit: BoxFit.cover)),
        ),
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(color: Colors.cyan.withOpacity(0.7)),
        ),
        // Footer content
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Connect with us:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialMedia(icon: Icons.email, label: "Email"),
                  SizedBox(width: 20),
                  _SocialMedia(icon: Icons.chat, label: "WhatsApp"),
                  SizedBox(width: 20),
                  _SocialMedia(icon: Icons.camera_alt, label: "Instagram"),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "© 2024 Your Company. All rights reserved.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SocialMedia extends StatelessWidget {
  final IconData icon;
  final String label;

  const _SocialMedia({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade200,
          child: Icon(
            icon,
            size: 30,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
