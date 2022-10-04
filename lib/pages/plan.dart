import 'package:flutter/material.dart';
import 'package:payment_app/shared/theme.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    Widget headerWidget() {
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

    Widget optionWidget(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
                color: selectedindex == index ? blueColor : greyColor),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monthly',
                    style: titlePlanStyle,
                  ),
                  Text(
                    'Good for starting up',
                    style: descPlanStyle,
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          headerWidget(),
          optionWidget(0),
          optionWidget(1),
          optionWidget(2),
        ],
      ),
    );
  }
}
