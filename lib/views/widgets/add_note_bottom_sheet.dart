import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 8,
          ),
          SizedBox(
            height: 48,
          ),
          CustomButton(
            text: 'Add',
            
          ),
        ],
      ),
    );
  }
}
