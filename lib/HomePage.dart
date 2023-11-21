import 'package:coffee_ui/coffee_Title.dart';
import 'package:coffee_ui/constants/colors.dart';
import 'package:coffee_ui/constants/string.dart';
import 'package:coffee_ui/row_list.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBlueDark,
      appBar: AppBar(
        title: const Text(
          appName,
          style: TextStyle(
              color: AppColors.colorWhiteHighEmp,
              fontSize: 20,
              fontFamily: 'serif',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.colorBlueDark,
        centerTitle: true,
        leading: Icon(
          Icons.menu_outlined,
          color: AppColors.colorWhiteHighEmp,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: AppColors.colorWhiteHighEmp,
            ),
          ),
        ],
      ),
      //Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppColors.colorWhiteHighEmp,
            ),
            label: 'Home',
            backgroundColor: AppColors.colorBlueDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: AppColors.colorWhiteHighEmp,
            ),
            label: 'Favorite',
            backgroundColor: AppColors.colorBlueDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
              color: AppColors.colorWhiteHighEmp,
            ),
            label: 'Cart',
            backgroundColor: AppColors.colorBlueDark,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: AppColors.colorWhiteHighEmp,
            ),
            label: 'Profile',
            backgroundColor: AppColors.colorBlueDark,
          )
        ],
      ),
      //Horizontal Axis
      //best Wish
      //Text Field
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                bestApp,
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: AppColors.colorWhiteHighEmp),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintText: ('Find Your coffee'),
                    filled: true,
                    fillColor: AppColors.colorWhiteHighEmp,
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.colorWhiteHighEmp),
                    )),
              ),
            ),
            //Coffee type row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                ],
              ),
            ),
            Container(
              height: 400,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return CoffeeTitle();
                  }
              ),
            ),
            Container(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return CoffeeTitle();
                  }
              ),
            ),
          ],
        ),
      )
    );
  }
}
