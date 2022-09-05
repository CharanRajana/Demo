import 'package:bottom_street_demo/extras/providers.dart';
import 'package:bottom_street_demo/extras/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Performancepage extends ConsumerWidget {
  const Performancepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final perfItems = ref.watch(performanceProvider);
    return Scaffold(
      body: perfItems.when(
          data: (perfItems) {
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
                                'Performance',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(
                                color: Colors.grey[900],
                                height: 20,
                                thickness: 1,
                              ),
                              ListView.builder(
                                itemCount: perfItems.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PBlock(
                                    l: perfItems[index].label,
                                    r: perfItems[index].changePercent,
                                  ),
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
