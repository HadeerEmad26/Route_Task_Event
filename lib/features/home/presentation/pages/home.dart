import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_event_task/core/utils/app_assets.dart';
import 'package:route_event_task/core/utils/app_colors.dart';
import 'package:route_event_task/core/utils/components.dart';

import '../manager/cubit.dart';
import '../manager/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(RemoteDto())..getProducts(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: SizedBox(
                height: 50,
                  width: 70,
                  child: Image.asset(AppImages.logo,color: AppColors.primary,),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: defaultFormField(
                      controller: TextEditingController(),
                    text: "What do you search for?"
                  ),
                ),
                SizedBox(
                  height: 280.h,
                  child: state is HomeLoadingState
                      ? const Center(child: CircularProgressIndicator())
                      : GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: HomeCubit.get(context).categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            width: 100.w,
                            height: 100.h,
                            child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: NetworkImage(
                                    HomeCubit.get(context)
                                        .categories[index]
                                        .image ??
                                        "")),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            HomeCubit.get(context).categories[index].name ??
                                "",
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
