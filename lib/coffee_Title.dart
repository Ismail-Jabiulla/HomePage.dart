import 'package:coffee_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class CoffeeTitle extends StatelessWidget {
  const CoffeeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.colorGreyDark,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/images/ante-samarzija.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Black Coffee',
                  style: TextStyle(
                    color: AppColors.colorWhiteHighEmp,
                    fontSize: 14,
                    fontFamily: 'serif',
                  ),
                  ),
                  Text('Fresh Brazilian Coffee',
                    style: TextStyle(
                      color: AppColors.colorGreyLight,
                      fontSize: 8,
                      fontFamily: 'serif',
                    ),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$4.00',
                    style: TextStyle(
                      color: AppColors.colorBlueDark,
                      fontSize: 16,
                      fontFamily: 'serif',
                    ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.colorBlueDark,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.add, color: AppColors.colorWhiteHighEmp,),
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
