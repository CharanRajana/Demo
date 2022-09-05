import 'package:bottom_street_demo/extras/providers.dart';
import 'package:bottom_street_demo/extras/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Overviewpage extends ConsumerWidget {
  const Overviewpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overviewItems = ref.watch(overviewProvider);
    return Scaffold(
      body: overviewItems.when(
          data: (overviewItems) {
            return SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.all(16),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Text(
                                'Overview',
                                style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Divider(
                                color: Colors.grey[900],
                                height: 20,
                                thickness: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                    l: 'Security', r: overviewItems.security),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                    l: 'Industry', r: overviewItems.industry),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                    l: 'Sector', r: overviewItems.sector),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                  l: 'Market Cap.',
                                  r: '${overviewItems.mcap.toStringAsFixed(2)} Cr',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                    l: 'Enterprise Value', r: overviewItems.ev),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                  l: 'Book Value/Share',
                                  r: overviewItems.bookNavPerShare
                                      .toStringAsFixed(2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                  l: 'Dividend Yield',
                                  r: overviewItems.overviewModelYield
                                      .toStringAsFixed(2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                  l: 'TTMPE',
                                  r: overviewItems.ttmpe.toStringAsFixed(2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OBlock(
                                  l: 'PEG Ratio',
                                  r: overviewItems.pegRatio.toStringAsFixed(2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: (() => const Center(
                child: CircularProgressIndicator(),
              ))),
    );
  }
}
