import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theming/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bettercoding.dev – theming'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Text(
              'Welcome!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 16),
            Text(
              'This is a tutorial about theming.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
            Spacer(),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: Theme.of(context).custom.imageSize,
              child: Image(
                image: Theme.of(context).imageForName('logo.png'),
              ),
            ),
            Spacer(),
            ElevatedButton(
              child: Text('Click me!'),
              onPressed: () {
                context.read(themeMode.notifier).toggle();
              },
            )
          ],
        ),
      ),
    );
  }
}
