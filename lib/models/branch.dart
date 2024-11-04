// TODO Implement this library.
// lib/models/branch.dart

class Branch {
  final String id;
  final String name;
  final String location;
  final String openingHours;
  final String imageUrl;
  final List<String> services;
  final String contactDetails;
  final double latitude;
  final double longitude;

  Branch({
    required this.id,
    required this.name,
    required this.location,
    required this.openingHours,
    required this.imageUrl,
    required this.services,
    required this.contactDetails,
    required this.latitude,
    required this.longitude,
  });
}
// lib/data/branches.dart

import '../models/branch.dart';

final List<Branch> branches = [
  Branch(
    id: '1',
    name: 'Burgan Bank - Kuwait City',
    location: 'Kuwait City, Kuwait',
    openingHours: 'Sun-Thu: 8:00 AM - 5:00 PM',
    imageUrl: 'https://example.com/image1.jpg', // Replace with actual image URLs or local assets
    services: ['Account Opening', 'Loans', 'Credit Cards'],
    contactDetails: 'Phone: +965 1234 5678\nEmail: kuwaitcity@burganbank.com',
    latitude: 29.3759,
    longitude: 47.9774,
  ),
  Branch(
    id: '2',
    name: 'Burgan Bank - Salmiya',
    location: 'Salmiya, Kuwait',
    openingHours: 'Sun-Thu: 8:30 AM - 5:30 PM',
    imageUrl: 'https://example.com/image2.jpg',
    services: ['Savings Accounts', 'Investment Services', 'Online Banking'],
    contactDetails: 'Phone: +965 8765 4321\nEmail: salmiya@burganbank.com',
    latitude: 29.3242,
    longitude: 48.0512,
  ),
  // Add more branches as needed
];
// lib/data/branches.dart

import '../models/branch.dart';

final List<Branch> branches = [
  Branch(
    id: '1',
    name: 'Burgan Bank - Kuwait City',
    location: 'Kuwait City, Kuwait',
    openingHours: 'Sun-Thu: 8:00 AM - 5:00 PM',
    imageUrl: 'https://example.com/image1.jpg', // Replace with actual image URLs or local assets
    services: ['Account Opening', 'Loans', 'Credit Cards'],
    contactDetails: 'Phone: +965 1234 5678\nEmail: kuwaitcity@burganbank.com',
    latitude: 29.3759,
    longitude: 47.9774,
  ),
  Branch(
    id: '2',
    name: 'Burgan Bank - Salmiya',
    location: 'Salmiya, Kuwait',
    openingHours: 'Sun-Thu: 8:30 AM - 5:30 PM',
    imageUrl: 'https://example.com/image2.jpg',
    services: ['Savings Accounts', 'Investment Services', 'Online Banking'],
    contactDetails: 'Phone: +965 8765 4321\nEmail: salmiya@burganbank.com',
    latitude: 29.3242,
    longitude: 48.0512,
  ),
  // Add more branches as needed
];