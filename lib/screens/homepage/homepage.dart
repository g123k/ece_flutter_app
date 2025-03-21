import 'package:ece_app/res/app_colors.dart';
import 'package:ece_app/res/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes scans'),
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(AppIcons.barcode))],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(flex: 2),
            SvgPicture.asset('res/svg/ill_empty.svg'),
            Spacer(flex: 5),
            Text('Vous n\'avez pas encore scanné de produit'),
            Spacer(flex: 4),
            TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.blue,
                backgroundColor: AppColors.yellow,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22.0)),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Commencer'.toUpperCase()),
                  const SizedBox(width: 10.0),
                  Icon(Icons.arrow_right_alt),
                ],
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
