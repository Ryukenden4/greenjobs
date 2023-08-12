import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenjobs/shared/widget/app_drawer.dart';

import '../../features/authentication/data/repositories/authentication_repository_impl.dart';
import '../../features/authentication/domain/repositories/authentication_repository.dart';

class AppScaffold extends ConsumerStatefulWidget {
  const AppScaffold({required this.child, super.key});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends ConsumerState<AppScaffold> {
  late AuthenticationRepository _authenticationRepository;

  @override
  void initState() {
    _authenticationRepository =
        ref.read(authenticationRepositoryImplProvider.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authStatus = ref.watch(authenticationRepositoryImplProvider.future);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SelectableText(
          'GreenJobs', // Replace this with your desired text
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.green,
                fontFamily: GoogleFonts.irishGrover().fontFamily,
              ),
        ),
        //create 'login' button on the right side
        actions: <Widget>[
          IconButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: ((context) => Dialog(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxWidth: 300, maxHeight: 400),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.red[900],
                                      child: Text(_authenticationRepository
                                              .currentUser
                                              ?.userMetadata?['name'] ??
                                          _authenticationRepository.currentUser
                                              ?.userMetadata?['companyName'] ??
                                          '?'),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      '${_authenticationRepository.currentUser?.userMetadata?['name'] ?? _authenticationRepository.currentUser?.userMetadata?['companyName'] ?? 'Unknown Name'}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ],
                                ),
                                const Divider(),
                                // ListTile(
                                //   leading: Icon(Icons.translate),
                                //   title: Text(
                                //     'Tukar ke Bahasa Melayu',
                                //     style: Theme.of(context).textTheme.bodyMedium,
                                //   ),
                                //   onTap: () {},
                                // ),
                                TextButton(
                                    onPressed: () async {
                                      await _authenticationRepository.logOut();
                                    },
                                    child: authStatus ==
                                            AuthenticationStatus.loading
                                        ? const CircularProgressIndicator()
                                        : Text(
                                            'Logout',
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .error),
                                          ))
                              ],
                            ),
                          ),
                        ),
                      ))),
              icon: const CircleAvatar(
                backgroundImage: AssetImage(''),
              ))
        ],
      ),
      drawer: const MainAppDrawer(),
      body: widget.child,
    );
  }
}
