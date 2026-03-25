import 'package:flutter/material.dart';

import 'package:auc_app/pages/section_placeholder_page.dart';

class ClubInfoPage extends StatelessWidget {
  const ClubInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionPlaceholderPage(
      title: 'Club info',
      description:
          'History, facilities, contacts, and general club information.',
    );
  }
}
