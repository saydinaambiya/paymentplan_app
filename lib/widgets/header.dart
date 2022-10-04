import 'package:flutter/material.dart';
import 'package:payment_app/shared/theme.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 32,
        right: 32,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(height: 16),
          Text(
            'Go unlock all features and \nbuild your own business bigger',
            style: subtitleStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
