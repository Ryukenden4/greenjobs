// ignore: file_names
import 'package:flutter/material.dart';
import 'package:greenjobs/square.dart';
import 'constants.dart';

// ignore: camel_case_types
class mobileScafford extends StatefulWidget {
  const mobileScafford({super.key});

  @override
  State<mobileScafford> createState() => _mobileScaffordState();
}

class Job {
  final String image;
  final String title;
  final String description;
  final String area;
  final String location;
  final String sector;
  final String duration;
  final String salary;

  Job({
    required this.image,
    required this.title,
    required this.description,
    required this.area,
    required this.location,
    required this.sector,
    required this.duration,
    required this.salary,
  });
}

// ignore: camel_case_types
class _mobileScaffordState extends State<mobileScafford> {
  final List<Job> list = [
    Job(
      image: 'lib/image/desa.jpg',
      title: 'Herd Management',
      area: 'Kundasang, Sabah',
      location: 'Desa Dairy Farm',
      sector: 'Agriculture',
      duration: 'Long-Term',
      salary: 'RM1500/month',
      description:
          'Overseeing the health, movement, and well-being of a dairy cow herd, including tasks like monitoring health indicators, coordinating grazing rotations, and ensuring optimal conditions for milk production',
    ),
    Job(
      image: 'lib/image/tree.jpg',
      title: 'Tree Planting Crew',
      area: 'Tuaran, Sabah',
      location: 'Sulaman Lake Mangrove Forest',
      sector: 'Eco - Tourism',
      duration: 'Short-Term',
      salary: 'RM80/day',
      description:
          'Join our tree planting crew and contribute to reforestation efforts. Work alongside a team to plant and care for trees, promoting environtment sustainability and creating a positive impact on our ecosystem',
    ),
    Job(
      image: 'lib/image/textile.jpg',
      title: 'Textile Printing Assistant',
      area: 'Keningau, Sabah',
      location: 'Batik Bayu',
      sector: 'Arts & Crafts',
      duration: 'Short-Term',
      salary: 'RM90/day',
      description:
          'Be a part of our team as a Textile Printing Assistant, where you will learn traditional and modern textile printing techniques, collaborate with skilled artisans, and help create vibrant and cultural significant textile products',
    ),
    // Define more jobs similarly
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
        drawer: myDrawer,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return mySquare(
                      job: list[index],
                    );
                  }),
              //footer
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                child: Card(
                  child: Column(
                    children: [
                      Row(children: [
                        const Text('ARE YOU HIRING?!'),
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.abc),
                            label: Text('hi'))
                      ])
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
