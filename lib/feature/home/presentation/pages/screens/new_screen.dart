import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../data/repositories/homeRepoImp.dart';
import '../../manager/layout_cubit.dart';
import '../../manager/layout_state.dart';
import '../../widgets/new_item.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      LayoutCubit(HomeRepoImpl())
        ..getUpComing(),
      child: BlocConsumer<LayoutCubit, LayoutStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              body: GridView
                  .count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1 / 2.2,
                  children: List.generate(LayoutCubit.get(context)
                  .upComingList
                  .length, (index)
          =>Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: NewItem(LayoutCubit.get(context).upComingList[index]),
          ),
          )

          )
          ,
          );
        },
      ),
    );
  }
}
