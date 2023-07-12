import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './home_cubit.dart';
import './home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getUsers(),
      child: Builder(
        builder: (context) {
          final cubit=BlocProvider.of<HomeCubit>(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Api Demo"),
            ),
            body: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state.hasError) {
                  return  ErrorWidget(onTap: () => cubit.onRefresh());
                } else {
                  return ListView.builder(
                    itemCount: state.usersList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(child: Icon(Icons.person)),
                        title: Text(
                          state.usersList[index].name.toString(),
                        ),
                        subtitle: Text(state.usersList[index].email.toString()),
                      );
                    },
                  );
                }
              },
            ),
          );
        }
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  final VoidCallback onTap;
  const ErrorWidget({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    var text=Theme.of(context).textTheme;
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline,size: 40),
          const SizedBox(
            height: 5,
          ),
           Text("Something went wrong!!",style: text.titleSmall),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: onTap,
            child: const Text("Please try again"),
          )
        ],
      ),
    );
  }
}
