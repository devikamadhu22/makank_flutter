import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seeroo_flutter_clean_architecture/l10n/language.dart';

import '../../../../domain/entities/user.dart';
import '../../../../l10n/lang_extensions.dart';
import '../../../components/common_error_loading_widget.dart';
import '../../translation/translation_bloc/translation_bloc.dart';
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
        title: Text(context.loc.title),
        actions: [
          IconButton(
              onPressed: () {
                if (context.loc.localeName == Language.en.locale.languageCode) {
                  context.read<TranslationBloc>().add(
                      TranslationEvent.changeLanguage(
                          locale: Language.ar.locale));
                } else {
                  context.read<TranslationBloc>().add(
                      TranslationEvent.changeLanguage(
                          locale: Language.en.locale));
                }
              },
              icon: const Icon(Icons.translate))
        ],
      ),
      body: BlocListener<TranslationBloc, TranslationState>(
        listener: (context, state) {
          state.when(
              initial: (_) {},
              loading: (_) {},
              failed: (_, __) {},
              success: (_) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(context.loc.language_change),
                  backgroundColor: Colors.green,
                ));
              });
        },
        child: BlocBuilder<HomeBloc, HomeState>(
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
      ),
    );
  }
}
