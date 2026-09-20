import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:product_list_screen/features/products/presentation/cubit/jobs_cubit.dart';
import 'package:product_list_screen/features/products/presentation/widgets/products_failure.dart';
import 'package:product_list_screen/features/products/presentation/widgets/products_shimmer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    context.read<JobsCubit>().getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop(context);
          },
        ),
        title: Text('Products'),
      ),

      body: BlocBuilder<JobsCubit, JobsState>(
        builder: (context, state) {
          switch (state) {
            case JobsInitialState():
              return const Center(child: CircularProgressIndicator());
            case JobsLoadingState():
              return const ProductShimmer();
            case JobsFailureState():
              return const ProductsFailure();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}


