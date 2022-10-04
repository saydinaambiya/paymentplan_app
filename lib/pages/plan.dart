import 'package:flutter/material.dart';
import 'package:payment_app/shared/theme.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 32,
          right: 32,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 60),
              child: Row(
                children: [
                  Text(
                    'Upgrade to ',
                    style: titleStyle,
                  ),
                  Text(
                    'Pro',
                    style: titleProStyle,
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Go unlock all features and \nbuild your own business bigger',
              style: subtitleStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
