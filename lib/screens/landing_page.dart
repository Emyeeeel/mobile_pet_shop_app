import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/landing_page_model.dart';
import '../providers/landing_page_provider.dart';
import '../widgets/landing_page_widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LandingPageProvider>(
      builder: (context, provider, child) {
        provider.setModelList(LandingPageModel.modelList);

        Model currentModel = provider.modelList[provider.currentModelId];

        print(currentModel.id);

        return Scaffold(
          body: Stack(
            children: [
              BackgroundImage(image: currentModel.image),
              ContainerWidget(
                id: currentModel.id,
                title: currentModel.title,
                description: currentModel.description,
                buttonText: currentModel.buttonText,
                onTap: provider.incrementModelId,
              ),
            ],
          ),
        );
      },
    );
  }
}
