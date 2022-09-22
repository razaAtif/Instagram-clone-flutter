import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:instagram_flutter/models/user.dart' as model;

import '../providers/user_provider.dart';

class MobileScreeLayout extends StatefulWidget {
  const MobileScreeLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreeLayout> createState() => _MobileScreeLayoutState();
}

class _MobileScreeLayoutState extends State<MobileScreeLayout> {
  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      body: Center(
        child: Text(user.email),
      ),
    );
  }
}
