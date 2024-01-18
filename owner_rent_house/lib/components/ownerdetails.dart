import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OwnerDetails extends StatelessWidget {
  const OwnerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Baseline(
            baseline: 80,
            baselineType: TextBaseline.alphabetic,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/icon.png'),
            ),
          ),
          Text(
            'Hello User',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            'Welcome to homepage',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
