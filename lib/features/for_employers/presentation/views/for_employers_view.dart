import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenjobs/routes/routes.dart';

class ForEmployersView extends ConsumerStatefulWidget {
  const ForEmployersView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForEmployersViewState();
}

class _ForEmployersViewState extends ConsumerState<ForEmployersView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Text('Welcome, Employers',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontFamily: GoogleFonts.irishGrover().fontFamily,
                    fontWeight: FontWeight.bold,
                  )),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 5),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'Integrating Working Holiday Talent in Your Team: Where Workforce Opportunities Meet Cultural Exchange: ',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.notoSans().fontFamily,
                                    ),
                              ),
                              Text(
                                'Fulfill your manpower capacity and embrace workforce diversity with flexibility of access on-demand working holiday individuals ',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.notoSans().fontFamily,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(16),
                                      backgroundColor: Colors.black),
                                  onPressed: () {
                                    const JobsRoute().go(context);
                                  },
                                  child: Text(
                                    'Post Job Now',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.payment, size: 100),
                  Text(
                    'Payment Guarantee',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Rest assured that our platform ensures the safe and timely transfer of payments for completed jobs',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.handshake, size: 100),
                  Text(
                    'Access to Diverse Talent',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Connect with diverse motivated candidates seeking working holiday experiences.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.people, size: 100),
                  Text(
                    'Support Cultural Exchange',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Contribute to cultural exchange while meeting your workforce needs.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.eco, size: 100),
                  Text(
                    'Promote Sustainability',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Engage with candidates who value sustainable practices and community engagement.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
