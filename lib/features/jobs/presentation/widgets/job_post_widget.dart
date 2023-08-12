// ignore_for_file: body_might_complete_normally_nullable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greenjobs/routes/routes.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../shared/domain/models/entities/job.dart';

class JobPostWidget extends ConsumerStatefulWidget {
  final Job job;

  JobPostWidget({required this.job});

  @override
  ConsumerState<JobPostWidget> createState() => _JobPostWidgetState();
}

class _JobPostWidgetState extends ConsumerState<JobPostWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        JobDetailsRoute(jobId: widget.job.id!).go(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
        child: Card(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    widget.job.imageUrls.firstOrNull ?? '',
                    width: 64,
                    height: 64,
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
                                widget.job.title!,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight
                                            .bold), // Adjust font size here
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

                        //company display
                        Row(
                          children: [
                            const Icon(
                              Icons.business,
                              color: Colors.green,
                            ),
                            const SizedBox(width: 5),
                            Flexible(
                              child: SelectableText(
                                widget.job.company!.name!,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge, // Adjust font size here
                              ),
                            ),
                          ],
                        ),
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
                                widget.job.location!,
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
              Divider(),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                children: [
                  //sector display
                  Chip(
                    label: SelectableText(
                      widget.job.sector!,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium, // Adjust font size here
                    ),
                  ),
                  // duration display
                  Chip(
                    label: SelectableText(
                      widget.job.duration == JobDuration.short_term
                          ? 'Short-Term'
                          : 'Long-term',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium, // Adjust font size here
                    ),
                  ),
                  // salary display
                  Chip(
                    label: SelectableText(
                      'RM ${widget.job.salary}/${widget.job.rate}',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium, // Adjust font size here
                    ),
                  ),
                  // start_date to end_date display
                  Chip(
                    label: SelectableText(
                      '${DateFormat('dd-MMMM-yyyy').format(widget.job.startDate!)} to ${DateFormat('dd-MMMM-yyyy').format(widget.job.startDate!)}',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium, // Adjust font size here
                    ),
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
                    widget.job.description!,
                    style:
                        const TextStyle(fontSize: 16), // Adjust font size here
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
                        '${(widget.job.createdAt!.toUtc().difference(DateTime.now().toUtc()).inDays)} days ago',
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
                        onPressed: () async {
                          await launchUrlString(
                              'mailto:${widget.job.company!.representativeEmail}');
                        },
                      ),
                      SizedBox(width: 5),
                      IconButton(
                        icon: Icon(
                          Icons.call,
                          size: 28,
                          color: Colors.green,
                        ),
                        onPressed: () async {
                          await launchUrlString(
                              'phone:${widget.job.company!.representativePhone}');
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
      ),
    );
  }
}
