import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreviousStudentConnection extends StatelessWidget {
  // Example data for alumni profiles
  final List<Map<String, String>> alumniList = [
    {
      'name': 'Aditya Andhale',
      'batch': '2020',
      'profession': 'Mobile Developer',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Jane Doe',
      'batch': '2018',
      'profession': 'Architect',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'John Smith',
      'batch': '2019',
      'profession': 'Doctor',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Alice Johnson',
      'batch': '2021',
      'profession': 'Artist',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Rajesh Kumar',
      'batch': '2017',
      'profession': 'Civil Engineer',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Emily Davis',
      'batch': '2020',
      'profession': 'Teacher',
      'imageUrl': 'https://via.placeholder.com/150',
    },
  ];

  PreviousStudentConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Previous Student Connection'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemCount: alumniList.length,
          itemBuilder: (context, index) {
            final alumni = alumniList[index];
            return GestureDetector(
              onTap: () {
                // Show details in a popup
                Get.defaultDialog(
                  title: alumni['name']!,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(alumni['imageUrl']!),
                      ),
                      const SizedBox(height: 10),
                      Text('Batch: ${alumni['batch']}'),
                      Text('Profession: ${alumni['profession']}'),
                    ],
                  ),
                  textCancel: 'Close',
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(alumni['imageUrl']!),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      alumni['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Batch: ${alumni['batch']}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      alumni['profession']!,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
