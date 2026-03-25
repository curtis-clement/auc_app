import 'package:flutter/material.dart';

import 'package:auc_app/pages/section_placeholder_page.dart';

class BoardLandingPage extends StatelessWidget {
  const BoardLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionPlaceholderPage(
      title: 'Board',
      description: 'Board members, governance, and club policy information.',
    );
  }
}
