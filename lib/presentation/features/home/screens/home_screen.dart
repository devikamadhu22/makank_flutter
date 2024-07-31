import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/user.dart';
import '../../../../l10n/lang_extensions.dart';
import '../../../../l10n/language.dart';
import '../../../components/common_error_loading_widget.dart';
import '../../../core/theme/theme_extension.dart';
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
    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.loc.title),
            actions: [
              IconButton(
                  onPressed: () {
                    if (context.loc.localeName ==
                        Language.en.locale.languageCode) {
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
          body: RefreshIndicator(
            onRefresh: () async {
              context.read<HomeBloc>().add(const HomeEvent.fetch());
            },
            child: ListView(
              children: [
                BlocListener<TranslationBloc, TranslationState>(
                  listener: (context, state) {
                    state.when(
                        initial: (_) {},
                        loading: (_) {},
                        failed: (_, __) {},
                        success: (_) {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(context.loc.languageChanged),
                            backgroundColor: Colors.green,
                          ));
                        });
                  },
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return state.when(
                          initial: () => CommonErrorLoadingWidget(
                              height: box.maxHeight,
                              error: "Failed to Call API"),
                          loading: () => CommonErrorLoadingWidget(
                                height: box.maxHeight,
                                isLoading: true,
                                error: null,
                              ),
                          failed: (error) => CommonErrorLoadingWidget(
                                error: error,
                                height: box.maxHeight,
                              ),
                          success: (data) {
                            final List<User> user = data.data ?? [];
                            return ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: user.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      user[index].firstName ?? "",
                                      style: context.myTextTheme.headlineSmall,
                                    ),
                                  );
                                });
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
