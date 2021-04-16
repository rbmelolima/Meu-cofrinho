import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/breakpoints/breakpoints.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';
import 'package:meu_cofrinho/ui/widgets/widgets.dart';

import './cash_counter_presenter.dart';

final String _baseImagePath = 'lib/ui/assets/images/notas';

class CashCounterPage extends StatelessWidget {
  final CashCounterPresenter presenter;

  const CashCounterPage({
    Key key,
    @required this.presenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Contador de notas",
          style: TextAppTheme.appBarTitle(),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: LimitedWidth(
          max: Breakpoints.maxWidth,
          child: ListView(
            padding: UtilsAppTheme.paddingApp(),
            children: [
              MoneyCard(
                pathImageAsset: _baseImagePath + '/2-reais.png',
                description: "Nota de R\$ 2,00",
                quantity: presenter.real02quantity,
                handleValue: presenter.handleReal02quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/5-reais.png',
                description: "Nota de R\$ 5,00",
                quantity: presenter.real05quantity,
                handleValue: presenter.handleReal05quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/10-reais.png',
                description: "Nota de R\$ 10,00",
                quantity: presenter.real10quantity,
                handleValue: presenter.handleReal10quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/20-reais.png',
                description: "Nota de R\$ 20,00",
                quantity: presenter.real20quantity,
                handleValue: presenter.handleReal20quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/50-reais.png',
                description: "Nota de R\$ 50,00",
                quantity: presenter.real50quantity,
                handleValue: presenter.handleReal50quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/100-reais.png',
                description: "Nota de R\$ 100,00",
                quantity: presenter.real100quantity,
                handleValue: presenter.handleReal100quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/200-reais.png',
                description: "Nota de R\$ 200,00",
                quantity: presenter.real200quantity,
                handleValue: presenter.handleReal200quantity,
              ),
              Space(vertical: 32),
              ElevatedButton(
                child: Text('Calcular'),
                onPressed: () {
                  var informations = presenter.getInformationAboutMoney();

                  showModalBottomSheet(
                    context: context,
                    builder: (_) => SizedBox(
                      width: double.maxFinite,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 12),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Space(vertical: 12),
                              Text(
                                presenter.getFormattedTotalValue(),
                                style: TextAppTheme.h3(color: Colors.black),
                              ),
                              Space(vertical: 48),
                              for (var item in informations.entries) ...[
                                Container(
                                  margin: EdgeInsets.only(bottom: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        item.key,
                                        style: TextAppTheme.p(color: Colors.black, size: 14),
                                      ),
                                      Spacer(),
                                      Text(
                                        item.value,
                                        style: TextAppTheme.strong(color: Colors.black, size: 14),
                                      ),
                                    ],
                                  ),
                                )
                              ]
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Space(vertical: 16),
              OutlinedButton(
                child: Text("Limpar tudo"),
                onPressed: presenter.clean,
              )
            ],
          ),
        ),
      ),
    );
  }
}
