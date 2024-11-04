// lib/main.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';
import 'pages/branch_list_page.dart';
import 'pages/branch_detail_page.dart';
import 'pages/error_page.dart';
import 'models/branch.dart';
import 'data/branches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Initialize GoRouter
  final GoRouter _router = GoRouter(
    routes: [
      // Home Route
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => HomePage(),
      ),
      // Branch List Route
      GoRoute(
        path: '/branches',
        name: 'branchList',
        builder: (context, state) => BranchListPage(),
        routes: [
          // Branch Detail Route
          GoRoute(
            path: 'details/:id',
            name: 'branchDetails',
            builder: (context, state) {
              final branchId = state.params['id']!;
              final branch = branches.firstWhere(
                (b) => b.id == branchId,
                orElse: () => Branch(
                  id: '0',
                  name: 'Unknown',
                  location: 'Unknown',
                  openingHours: 'Unknown',
                  imageUrl: '',
                  services: [],
                  contactDetails: 'Unknown',
                  latitude: 0.0,
                  longitude: 0.0,
                ),
              );
              return BranchDetailPage(branch: branch);
            },
          ),
        ],
      ),
    ],
    // Error Route
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Burgan Bank Branches',
      routerConfig: _router,
      theme: ThemeData(
        primarySwatch: Colors.pink, // Pink theme as per your styling
      ),
    );
  }
}


