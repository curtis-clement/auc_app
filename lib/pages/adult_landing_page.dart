import 'package:flutter/material.dart';

import 'package:auc_app/pages/section_placeholder_page.dart';

class AdultLandingPage extends StatelessWidget {
  const AdultLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionPlaceholderPage(
      title: 'Adults',
      description:
          'Senior teams, recreational football, and adult programme details.',
    );
  }
}
