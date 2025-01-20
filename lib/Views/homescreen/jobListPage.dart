import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobsListPage extends StatelessWidget {
JobsListPage({super.key});

  final List _jobs = [
    {
      'title': 'Data Engineer',
      'organization': 'Google',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png',
      'datePosted': '2025-01-15',
    },
    {
      'title': 'Software Engineer',
      'organization': 'Microsoft',
      'organizationLogo':
          'https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/RWCZER-Legal-IP-Trademarks-CP-MS-logo-740x417-1?wid=297&hei=167&fit=crop',
      'datePosted': '2025-01-12',
    },
    {
      'title': 'DevOps Engineer',
      'organization': 'Amazon',
      'organizationLogo':
          'https://logos-world.net/wp-content/uploads/2020/06/Amazon-Logo-500x281.png',
      'datePosted': '2025-01-10',
    },
    {
      'title': 'Product Manager',
      'organization': 'Meta',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Meta_Platforms_Inc._logo.svg/1200px-Meta_Platforms_Inc._logo.svg.png',
      'datePosted': '2025-01-08',
    },
    {
      'title': 'UI/UX Designer',
      'organization': 'Apple',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg',
      'datePosted': '2025-01-05',
    },
    {
      'title': 'Cloud Engineer',
      'organization': 'IBM',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/IBM_logo.svg/2560px-IBM_logo.svg.png',
      'datePosted': '2025-01-03',
    },
    {
      'title': 'Machine Learning Engineer',
      'organization': 'OpenAI',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/6/6e/OpenAI_Logo.svg',
      'datePosted': '2025-01-01',
    },
    {
      'title': 'Cybersecurity Analyst',
      'organization': 'Cisco',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/8/8d/Cisco_logo_blue_2016.svg',
      'datePosted': '2024-12-28',
    },
    {
      'title': 'Game Developer',
      'organization': 'Unity',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/c/c7/Unity_2021.svg',
      'datePosted': '2024-12-25',
    },
    {
      'title': 'Backend Developer',
      'organization': 'Twitter',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/en/6/60/Twitter_Logo_as_of_2021.svg',
      'datePosted': '2024-12-22',
    },
    {
      'title': 'Frontend Developer',
      'organization': 'Spotify',
      'organizationLogo':
          'https://upload.wikimedia.org/wikipedia/commons/2/26/Spotify_logo_with_text.svg',
      'datePosted': '2024-12-20',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            
            const SizedBox(
              width: 10,
            ),
            Text(
              'Internship',
              style: GoogleFonts.imprima(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: _jobs.length,
        itemBuilder: (context, index) {
          final job = _jobs[index];
          return Card(
            color: Colors.white,
            elevation: 5,
            shadowColor: Colors.black,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  job['organizationLogo'] != null
                      ? Image.network(
                          job['organizationLogo'],
                          height: 50,
                          width: 50,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.business),
                            );
                          },
                        )
                      : CircleAvatar(
                          radius: 20,
                          child: Icon(Icons.business),
                        ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 229, 228, 228),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text("Internship"),
                      ),
                      Text(
                        job['title'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        job['organization'],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Date Posted : ${job['datePosted']}",
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'View Details',
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.09),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              'Engineering Students',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 58, 58, 58),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Job {
//   final String title;
//   final String organization;
//   final String organizationLogo;
//   final String date_posted;

//   Job(
//       {required this.title,
//       required this.organization,
//       required this.organizationLogo,
//       required this.date_posted});

//   factory Job.fromJson(Map<String, dynamic> json) {
//     return Job(
//       title: json['title'] ?? '',
//       organization: json['organization'] ?? '',
//       organizationLogo: json['organizationLogo'] ?? '',
//       date_posted: json["date_posted"] ?? '',
//     );
//   }
// }

// class JobsListPage extends StatefulWidget {
//   const JobsListPage({super.key});

//   @override
//   _JobsListPageState createState() => _JobsListPageState();
// }

// class _JobsListPageState extends State<JobsListPage> {
//   List _jobs = [];
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _fetchJobs();
//   }

//   Future<void> _fetchJobs() async {
//     const String _apiUrl =
//         "https://linkedin-jobs-api2.p.rapidapi.com/active-jb-7d?title_filter=%22Data%20Engineer%22&location_filter=%22United%20States%22";
//     final headers = {
//       'x-rapidapi-host': 'linkedin-jobs-api2.p.rapidapi.com',
//       'x-rapidapi-key': '8d6d08cc07msh6ad86ddbd62c2bdp153c63jsnf6472cf3af80',
//     };

//     try {
//       final response = await http.get(Uri.parse(_apiUrl), headers: headers);

//       if (response.statusCode == 200) {
//         final jsonData = jsonDecode(response.body);
//         final jobs = jsonData.map((job) => Job.fromJson(job)).toList();
//         setState(() {
//           _jobs = jobs;
//           _isLoading = false;
//         });
//       } else {
//         _showErrorDialog(
//             'Failed to fetch jobs', 'Status code: ${response.statusCode}');
//         _isLoading = false;
//       }
//     } catch (error) {
//       _showErrorDialog('Error fetching jobs', error.toString());
//       _isLoading = false;
//     }
//   }

//   void _showErrorDialog(String title, String message) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(title),
//         content: Text(message),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: _jobs.length,
//                     itemBuilder: (context, index) {
//                       final job = _jobs[index];
//                       String splitsTime = job.date_posted;
//                       final splits = splitsTime.split('T');
//                       final date = splits[0];
//                       return Card(
//                         color: Colors.white,
//                         elevation: 5,
//                         shadowColor: Colors.black,
//                         margin: const EdgeInsets.all(10),
//                         child: Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               job.organizationLogo.isNotEmpty
//                                   ? CircleAvatar(
//                                       backgroundImage:
//                                           NetworkImage(job.organizationLogo),
//                                       radius: 20,
//                                     )
//                                   : CircleAvatar(
//                                       radius: 20,
//                                       child: Icon(Icons.business),
//                                     ),
//                               SizedBox(width: 10),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.all(5),
//                                     decoration: BoxDecoration(
//                                       color: const Color.fromARGB(
//                                           255, 229, 228, 228),
//                                       borderRadius: BorderRadius.circular(5),
//                                     ),
//                                     child: Text("Internship"),
//                                   ),
//                                   Text(
//                                     job.title,
//                                     style: const TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                     overflow: TextOverflow.fade,
//                                     maxLines: 2,
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Text(
//                                     job.organization,
//                                     style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w400),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Text(
//                                     "Date Posted : $date",
//                                     style: const TextStyle(fontSize: 14),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       Text(
//                                         'View Details',
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           color: Theme.of(context).primaryColor,
//                                         ),
//                                       ),
//                                       Container(
//                                         decoration: BoxDecoration(
//                                             border: Border.all(width: 0.4),
//                                             borderRadius:
//                                                 BorderRadius.circular(10)),
//                                         child: Text(
//                                           'Engineering Students',
//                                           style: TextStyle(
//                                             fontSize: 16,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }