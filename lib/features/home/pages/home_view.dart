import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sott_exam/features/home/blocs/home_bloc.dart';
import 'package:sott_exam/features/home/blocs/home_state.dart';

import '../widgets/home_appbar_bottom.dart';
import '../widgets/home_container.dart';

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
                    // childAspectRatio: 161 / 230,
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return HomeContainer(
                      image: state.model![index].image,
                      sum: state.model![index].price.toString(),
                      price: state.model![index].price.toString(),
                      area: state.model![index].area,
                      category: state.model![index].category,
                      currency: state.model![index].currency,
                      floor: state.model![index].floor,
                      numOfRooms: state.model![index].numOfRooms,
                      totalFloors: state.model![index].totalFloors,
                      distance: state.model![index].nearestPopularPlace.distance.toString(),
                      metro: state.model![index].nearestPopularPlace.image,
                      place: state.model![index].nearestPopularPlace.title,
                    );
                  }, childCount: state.model!.length),
                ),
              ],
            ),
          ),
        };
      },
    );
  }
}

