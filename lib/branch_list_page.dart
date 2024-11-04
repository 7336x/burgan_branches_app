// lib/pages/branch_list_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/branch.dart';
import '../data/branches.dart';

class BranchListPage extends StatelessWidget {
  const BranchListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold with AppBar and ListView
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Burgan Bank Branches',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20, // Increased font size
          ),
        ),
        backgroundColor: Colors.pink, // Pink AppBar
      ),
      body: ListView.builder(
        itemCount: branches.length,
        itemBuilder: (context, index) {
          final branch = branches[index];
          return ListTile(
            leading: branch.imageUrl.isNotEmpty
                ? Image.network(
                    branch.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  )
                : Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                    child: Icon(Icons.location_on, color: Colors.white),
                  ),
            title: Text(branch.name),
            subtitle: Text(branch.location),
            onTap: () {
              context.goNamed(
                'branchDetails',
                params: {'id': branch.id},
              );
            },
          );
        },
      ),
    );
  }
}

