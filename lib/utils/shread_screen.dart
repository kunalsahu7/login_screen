import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SHR
{
  void saveshr(String email,String password,bool IsLogin)
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString("e1", email);
    shr.setString("p1", password);
    shr.setBool("islogn", IsLogin);
  }

  Future<Map> readshr()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    String? email = shr.getString("e1");
    String? password = shr.getString("p1");
    bool? IsLogin = shr.getBool("islogin");

    Map m1 = {"e1":email,"p1":password,"islogin":IsLogin};
    return m1;
  }


}