import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sott_exam/features/home/blocs/home_bloc.dart';
import 'package:sott_exam/features/home/blocs/home_state.dart';

import '../widgets/home_appbar_bottom.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return switch (state.status) {
          null => throw UnimplementedError(),
          HomeStatus.error => Center(child: Text("Xatolik bor")),
          HomeStatus.loading => Center(child: CircularProgressIndicator()),
          HomeStatus.idle => Scaffold(
            body: CustomScrollView(
              slivers: [
                HomeAppBarBottom(),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19,
                    mainAxisSpacing: 20,
                    childAspectRatio: 161 / 230,
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return HomeContainer(image: state.model![index].image);
                  },childCount: state.model!.length),
                ),
              ],
            ),
          ),
        };
      },
    );
  }
}

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 214,
      width: 214,
      child: Column(
        spacing: 8,
        children: [
          SizedBox(
            width: 169,
            height: 128,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(image, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
