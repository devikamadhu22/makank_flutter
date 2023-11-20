import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/user.dart';
import '../../../components/common_error_loading_widget.dart';
import '../blocs/home_bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seeroo Sample Clean Architecture App"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.when(
              initial: () =>
                  const CommonErrorLoadingWidget(error: "Failed to Call API"),
              loading: () => const CommonErrorLoadingWidget(
                    isLoading: true,
                    error: null,
                  ),
              failed: (error) => CommonErrorLoadingWidget(error: error),
              success: (data) {
                final List<User> user = data.data ?? [];
                return ListView.builder(
                    itemCount: user.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          user[index].firstName ?? "",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      );
                    });
              });
        },
      ),
    );
  }
}
