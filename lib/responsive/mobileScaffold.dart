// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:greenjobs/square.dart';
import 'constants.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class MobileScafford extends StatefulWidget {
  const MobileScafford({super.key});

  @override
  State<MobileScafford> createState() => _MobileScaffordState();
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

class _MobileScaffordState extends State<MobileScafford> {
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
            child: Column(children: [
          //header
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
              child: Card(
                child: Column(
                  children: [
                    //ROW 1
                    Container(
                      //color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const SizedBox(width: 5),
                            Expanded(
                              child: Center(
                                  child: SelectableText(
                                      'Gateaway to Curtural Experiences:\nFind Your Working Holiday Adventure!',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold))),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //job search bar
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search), // Icon to be added
                            hintText: 'Job Title or Keyword',
                          ),
                        ),
                      ),
                    ),

                    //location search bar
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.location_on), // Icon to be added
                            hintText: 'Location',
                          ),
                        ),
                      ),
                    ),

                    //sector, duration and salary
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Sector',
                                prefixIcon: Icon(Icons.business),
                              ),
                              onTap: () {
                                // Add your onTap functionality here
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Duration',
                                prefixIcon: Icon(Icons.timer),
                              ),
                              onTap: () {
                                // Add your onTap functionality here
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Salary',
                                prefixIcon: Icon(Icons.attach_money),
                              ),
                              onTap: () {
                                // Add your onTap functionality here
                              },
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Number of jobs text
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${list.length} Found jobs out of ${list.length + 12}',
                          style: TextStyle(
                            fontSize: 10,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    //body
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return mySquare(
                            job: list[index],
                          );
                        }),

                    // Footer
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 0.0),
                      child: Card(
                        child: Column(
                          children: [
                            //ROW 1
                            Container(
                              color: Colors.greenAccent,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    Expanded(
                                      child: Center(
                                          child: SelectableText(
                                              'ARE YOU HIRING?',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold))),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              20), // Adjust the radius as needed
                                          child: SignInButtonBuilder(
                                            text: 'Apply Now',
                                            textColor: Colors.white,
                                            onPressed: () {},
                                            backgroundColor: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),
                            //Row 2
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        children: [
                                          TextSpan(
                                            text: 'Job Seeker',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // Add your onTap functionality here
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        children: [
                                          TextSpan(
                                            text: 'About Us',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // Add your onTap functionality here
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //Row 3
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        children: [
                                          TextSpan(
                                            text: 'Employer',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // Add your onTap functionality here
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        children: [
                                          TextSpan(
                                            text: 'Send Feedback',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // Add your onTap functionality here
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // 5 icons at the bottom
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.mail,
                                      size: 30,
                                      color: Colors.green,
                                    ),
                                    onPressed: () {
                                      // Add your mail functionality here
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.call,
                                      size: 30,
                                      color: Colors.green,
                                    ),
                                    onPressed: () {
                                      // Add your call functionality here
                                    },
                                  ),
                                  SignInButton(
                                    Buttons.LinkedIn,
                                    mini: true,
                                    onPressed: () {},
                                  ),
                                  SignInButton(
                                    Buttons.Facebook,
                                    mini: true,
                                    onPressed: () {},
                                  ),
                                  SignInButton(
                                    Buttons.Twitter,
                                    mini: true,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ])));
  }
}
