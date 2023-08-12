import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../shared/domain/models/entities/job.dart';

part 'jobs_viewmodel.g.dart';

@riverpod
class JobsViewModel extends _$JobsViewModel {
  @override
  Future<List<Job>> build() async {
    final jobs = await Supabase.instance.client
        .from('jobs')
        .select<List<Map<String, dynamic>>>('*, company:company_id(name)')
        .withConverter((data) => data.map((e) => Job.fromJson(e)!).toList());

    return jobs;
  }
}
