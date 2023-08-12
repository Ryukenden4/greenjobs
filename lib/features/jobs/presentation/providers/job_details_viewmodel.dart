import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../shared/domain/models/entities/job.dart';

part 'job_details_viewmodel.g.dart';

@riverpod
class JobDetailsViewModel extends _$JobDetailsViewModel {
  Future<Job> build({required String jobId}) async {
    final job = await Supabase.instance.client
        .from('jobs')
        .select<Map<String, dynamic>?>('*')
        .eq('id', jobId)
        .maybeSingle()
        .withConverter((data) => Job.fromJson(data ?? {}));
    if (job == null) {
      throw Exception('Job not found');
    }
    return job;
  }
}
