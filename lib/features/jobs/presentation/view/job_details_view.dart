// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:greenjobs/features/jobs/presentation/providers/job_details_viewmodel.dart';
import 'package:like_button/like_button.dart';

import 'jobs_view.dart';

class JobDetailsView extends ConsumerStatefulWidget {
  const JobDetailsView({required this.jobId, super.key});

  final String jobId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _JobDetailsViewState();
}

class _JobDetailsViewState extends ConsumerState<JobDetailsView> {
  late final JobDetailsViewModel viewModel;

  @override
  void initState() {
    viewModel =
        ref.read(jobDetailsViewModelProvider(jobId: widget.jobId).notifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final jobData = ref.watch(jobDetailsViewModelProvider(jobId: widget.jobId));
    return SingleChildScrollView(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
            child: jobData.when(
                data: (job) {
                  return Column(children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                job.imageUrls.firstOrNull ?? '',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: SelectableText(
                                            job.title!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
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
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_city,
                                          color: Colors.green,
                                        ),
                                        const SizedBox(width: 5),
                                        Flexible(
                                          child: SelectableText(
                                            job.location!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
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
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                              ),
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
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                              ),
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
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //job description
                    SizedBox(height: 20),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[200],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text(
                                    'Job Description',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SelectableText(
                                    '- Monitor cow health and behaviour. \n- Assist in milking routines and equipment maintenance.\n- Coordinate grazing and feeding schedules. \n- Maintain herd records and health data.\n- Participate in farm events and activities',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //benefits
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[200],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text(
                                    'Benefits',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: SelectableText(
                                      '- On-Farm accomodation in rustic cottages.\n- Meals provided during work hours.\n- Stipend for personal expenses.\n- Training in dairy herd management practices.\n- Curtural exchange opportunities with our farming community',
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Skill or qualifications
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[200],
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Skill or qualifications',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: SelectableText(
                                          '- Basic understanding of animal care and handling.\n- Strong work and willingness to learn.\n-Good Communication skills and teamwork abilities',
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

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
                                                                    FontWeight
                                                                        .bold))),
                                              ),
                                              Expanded(
                                                child: Center(
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20), // Adjust the radius as needed
                                                    child: SignInButtonBuilder(
                                                      text: 'Apply Now',
                                                      textColor: Colors.white,
                                                      onPressed: () {},
                                                      backgroundColor:
                                                          Colors.black,
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
                                                      recognizer:
                                                          TapGestureRecognizer()
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
                                                      recognizer:
                                                          TapGestureRecognizer()
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
                                                      recognizer:
                                                          TapGestureRecognizer()
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
                                                      recognizer:
                                                          TapGestureRecognizer()
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                          )
                        ])
                  ]);
                },
                error: (error, _) => Text(error.toString()),
                loading: () =>
                    const Center(child: CircularProgressIndicator()))));
  }
}
