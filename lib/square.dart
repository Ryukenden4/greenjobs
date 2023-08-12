// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:greenjobs/responsive/mobileScaffold.dart';
import 'package:like_button/like_button.dart';

class mySquare extends StatelessWidget {
  final Job job;

  mySquare({required this.job});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Container(
        height: 400, // Increased the container height to accommodate the footer
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  job.image,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Align icon to the right
                        children: [
                          //title display
                          Flexible(
                            child: SelectableText(
                              job.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge, // Adjust font size here
                            ),
                          ),
                          LikeButton(
                            size: 42,
                            likeBuilder: (isLiked) {
                              Icons.bookmark;
                            },
                            //color: Colors.green,
                          ),
                        ],
                      ),
                      //area display
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 5),
                          SelectableText(
                            job.area,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge, // Adjust font size here
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),

                      //location display
                      Row(
                        children: [
                          const Icon(
                            Icons.location_city,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: SelectableText(
                              job.location,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge, // Adjust font size here
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //sector display
                Row(
                  children: [
                    const Icon(
                      Icons.category,
                      size: 20,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 5),
                    SelectableText(
                      ' ${job.sector}',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge, // Adjust font size here
                    ),
                  ],
                ),

                //duration display
                Row(
                  children: [
                    const Icon(
                      Icons.timer,
                      size: 20,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 5),
                    SelectableText(
                      ' ${job.duration}',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge, // Adjust font size here
                    ),
                  ],
                ),

                //salary display
                Row(
                  children: [
                    const Icon(
                      Icons.attach_money,
                      size: 20,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 5),
                    SelectableText(
                      '${job.salary}',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge, // Adjust font size here
                    ),
                  ],
                ),
              ],
            ),

            //description
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                // Wrap job description with Center widget
                child: SelectableText(
                  job.description,
                  style: const TextStyle(fontSize: 16), // Adjust font size here
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Align icons and text
              children: [
                //date published
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 28,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    SelectableText(
                      '2 Days ago',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),

                //contact button
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.mail,
                        size: 28,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        // Add your onPressed functionality here
                      },
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(
                        Icons.call,
                        size: 28,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        // Add your onPressed functionality here
                      },
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(
                        Icons.next_week,
                        size: 28,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        // Add your onPressed functionality here
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
