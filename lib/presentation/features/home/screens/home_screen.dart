import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/entities/mock_list_item.dart';
import '../../../core/values/app_assets.dart';
import '../../../../l10n/lang_extensions.dart';
import '../../../../l10n/language.dart';
import '../../../components/common_error_loading_widget.dart';
import '../../translation/translation_bloc/translation_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MockListItem>? mockListData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mockListData = [
      MockListItem(
        jobId: context.loc.jobId,
        title: context.loc.title,
        address: context.loc.address,
        date: context.loc.date,
        paymentType: context.loc.paymentType,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 210,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.loginbg),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: mockListData?.length ?? 0,
                          itemBuilder: (context, index) {
                            final item = mockListData![index];
                            return Card(
                              color: Colors.yellow.shade100,
                              margin: EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                title: Row(
                                  children: [
                                    Text(
                                      item.jobId,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios, color: Colors.black),
                                  ],
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8),
                                    Text(
                                      item.title,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      item.address,
                                      style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),
                                    ),
                                    SizedBox(height: 12),
                                    Row(
                                      children: [
                                        Chip(
                                          label: Text(item.date, style: TextStyle(color: Colors.black)),
                                          backgroundColor: Colors.yellow,
                                        ),
                                        Spacer(),
                                        Expanded(
                                          child: Text(
                                            "Payment Type: ${item.paymentType}",
                                            style: TextStyle(fontSize: 14, color: Colors.pink.shade700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,
            right: 16,
            child: TextButton(
              onPressed: () {
                context.read<TranslationBloc>().add(
                  TranslationEvent.changeLanguage(
                    locale: context.loc.localeName == Language.en.locale.languageCode
                        ? Language.ar.locale
                        : Language.en.locale,
                  ),
                );
              },
              child: Text(
                'Switch Language',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
