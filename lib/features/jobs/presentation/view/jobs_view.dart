// ignore: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greenjobs/features/jobs/presentation/providers/jobs_viewmodel.dart';
import 'package:greenjobs/features/jobs/presentation/widgets/job_post_widget.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class JobsView extends ConsumerStatefulWidget {
  const JobsView({super.key});

  @override
  ConsumerState<JobsView> createState() => _JobsViewState();
}

class _JobsViewState extends ConsumerState<JobsView> {
  @override
  Widget build(BuildContext context) {
    final jobListData = ref.watch(jobsViewModelProvider);
    return Scaffold(
        body: SingleChildScrollView(
      child: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(jobsViewModelProvider);
        },
        child: Column(
          children: [
            jobListData.when(
                data: (jobList) {
                  if (jobList.isEmpty) {
                    return const Expanded(
                        child: Center(
                      child: Text('No jobs found'),
                    ));
                  }

                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: jobList.length,
                      itemBuilder: (context, index) {
                        return JobPostWidget(
                          job: jobList[index],
                        );
                      });
                },
                error: (error, _) => Text(error.toString()),
                loading: () => const CircularProgressIndicator()),

            // Footer
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
              child: Card(
                child: Column(
                  children: [
                    //ROW 1
                    Container(
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const SizedBox(width: 5),
                            Expanded(
                              child: Center(
                                child: SelectableText('ARE YOU HIRING?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                            fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                  child: SignInButtonBuilder(
                                text: 'Apply Now',
                                textColor: Colors.white,
                                onPressed: () {},
                                backgroundColor: Colors.black,
                              )),
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
                                style: Theme.of(context).textTheme.labelLarge,
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
                                style: Theme.of(context).textTheme.labelLarge,
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
                                style: Theme.of(context).textTheme.labelLarge,
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
                                style: Theme.of(context).textTheme.labelLarge,
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
                            icon: const Icon(
                              Icons.mail,
                              size: 30,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              // Add your mail functionality here
                            },
                          ),
                          IconButton(
                            icon: const Icon(
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
      ),
    ));
  }
}
