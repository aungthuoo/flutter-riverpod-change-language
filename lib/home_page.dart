// lib/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'locale_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeNotifier = ref.read(localeProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.welcome,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 24),


            ElevatedButton(
              onPressed: () => localeNotifier.changeLocale(const Locale('en')),
              child: const Text('English'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => localeNotifier.changeLocale(const Locale('my')),
              child: const Text('မြန်မာ'),
            ),
          ],
        ),
      ),
    );
  }
}
