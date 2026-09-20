import 'package:flutter/material.dart';
import 'package:product_list_screen/features/products/data/job_model.dart';

class JobsCard extends StatelessWidget {
  const JobsCard({
    super.key,
    required this.job,
  });

  final Results job;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 15,
          children: [
            Row(
              children: [
                if(job.logo != null)
                  Image.network(
                    job.logo!,
                    width: 50,
                    height: 50,
                  ),
                Column(
                  spacing: 10,
                  children: [
                    Text(
                      job.companyName ?? '',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      job.role ?? '',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.bookmark_outline)
              ],
            ),
            Row(children: [

            ],)
          ],
            ),
      ),
    );
  }
}//