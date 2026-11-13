
import 'package:home_widget/home_widget.dart';
import '../models/receitas.dart';

class WidgetService {
  static const String widgetName = 'ReceitaWidget';

  static Future<void> atualizar(Receita receita) async {
    await HomeWidget.saveWidgetData<String>(
      'nome',
      receita.nome,
    );

    await HomeWidget.saveWidgetData<String>(
      'tipo',
      receita.tipo,
    );

    await HomeWidget.saveWidgetData<String>(
      'ingredientes',
      receita.ingredientes,
    );

    await HomeWidget.saveWidgetData<String>(
      'imagem',
      receita.img,
    );

    await HomeWidget.updateWidget(
      name: widgetName,
      androidName: widgetName,
    );
  }
}
