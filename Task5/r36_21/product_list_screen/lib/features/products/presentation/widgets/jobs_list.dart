import 'package:flutter/material.dart';
import 'package:product_list_screen/features/products/data/job_model.dart';
import 'package:product_list_screen/features/products/presentation/widgets/jobs_card.dart';

class JobsList extends StatelessWidget {
  final List<Results> jobs;

  const JobsList({
    super.key, required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return JobsCard(job: job);
        },
      ),
    );
  }
}