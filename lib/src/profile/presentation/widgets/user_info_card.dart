import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    required this.infoTheColour,
    required this.infoIcon,
    required this.infoTitle,
    required this.infoValue,
    super.key,
  });

  final Color infoTheColour;
  final Widget infoIcon;
  final String infoTitle;
  final String infoValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 84,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E6EA)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: infoTheColour,
                shape: BoxShape.circle,
              ),
              child: infoIcon,
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  infoTitle,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  infoValue,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}