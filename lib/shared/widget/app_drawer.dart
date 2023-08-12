import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenjobs/routes/routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MainAppDrawer extends ConsumerStatefulWidget {
  const MainAppDrawer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MainAppDrawerState();
}

class MainAppDrawerState extends ConsumerState<MainAppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //what's inside it
      child: Column(children: [
        DrawerHeader(
            child: SelectableText('GreenJobs',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.green,
                      fontFamily: GoogleFonts.irishGrover().fontFamily,
                    ))),
        ListTile(
          leading: const Icon(Icons.work),
          title: const SelectableText('Jobs'),
          onTap: () => const JobsRoute().go(context),
        ),
        ListTile(
          leading: Icon(Icons.store),
          title: SelectableText('Companies'),
        ),
        ListTile(
            leading: Icon(Icons.groups), title: SelectableText('For Employer')),
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton.icon(
                  onPressed: () {
                    Supabase.instance.client.auth.signOut();
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text('Logout')),
            )
          ]),
        )
      ]),
    );
  }
}
