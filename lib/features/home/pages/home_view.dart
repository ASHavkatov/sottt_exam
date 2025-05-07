import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sott_exam/features/home/blocs/home_bloc.dart';
import 'package:sott_exam/features/home/blocs/home_state.dart';

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
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(

                    title: Text('SOTT',style: TextStyle(color: Colors.black),),
                    background: Image.asset(
                      'assets/images/background_photo.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  delegate: SliverChildBuilderDelegate((
                    BuildContext context,
                    int index,
                  ) {
                    return ListTile(title: Text('Item $index'));
                  }, childCount: 50),
                ),
              ],
            ),
          ),
        };
      },
    );
  }
}
