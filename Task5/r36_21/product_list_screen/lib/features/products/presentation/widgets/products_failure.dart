import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list_screen/features/products/presentation/cubit/jobs_cubit.dart';

class ProductsFailure extends StatelessWidget {
  const ProductsFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error, size: 88),
          Text(
            (context.read<JobsCubit>().state as JobsFailureState)
                .errorMessage,
            style: const TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}