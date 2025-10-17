
import 'package:flutter/material.dart';
import 'package:task/Clock.dart';
import 'package:task/login_page.dart';
import 'package:task/product_grid_01.dart';
import 'package:task/product_grid_02.dart';
import 'package:task/product_grid_03.dart';
import 'package:task/product_grid_04.dart';
import 'package:task/product_grid_05.dart';
import 'package:task/self_project.dart';
import 'package:task/women_cart.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      // home: SelfProject(),
      // home: ClockTimer(),
      // home: WomenCart(),
      // home: FoodProductGrid(),
      // home: FavoriteList(),
      // home: FavoriteList2(),
      // home: NotificationScreen(),
      home: AddItemScreen(),
    )
  );
}