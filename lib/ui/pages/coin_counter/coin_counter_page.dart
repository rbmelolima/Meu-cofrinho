import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/breakpoints/breakpoints.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';
import 'package:meu_cofrinho/ui/widgets/widgets.dart';

import './coin_counter_presenter.dart';

final String _baseImagePath = 'lib/ui/assets/images/moedas';

class CoinCounterPage extends StatelessWidget {
  final CoinCounterPresenter presenter;

  const CoinCounterPage({
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
          "Contador de moedinhas",
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
                pathImageAsset: _baseImagePath + '/5-cent.png',
                description: "Moeda de R\$ 0,05",
                quantity: presenter.cents05quantity,
                handleValue: presenter.handleCents05quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/10-cent.png',
                description: "Moeda de R\$ 0,10",
                quantity: presenter.cents10quantity,
                handleValue: presenter.handleCents10quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/25-cent.png',
                description: "Moeda de R\$ 0,25",
                quantity: presenter.cents25quantity,
                handleValue: presenter.handleCents25quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/50-cent.png',
                description: "Moeda de R\$ 0,50",
                quantity: presenter.cents50quantity,
                handleValue: presenter.handleCents50quantity,
              ),
              MoneyCard(
                pathImageAsset: _baseImagePath + '/1-real.png',
                description: "Moeda de R\$ 1,00",
                quantity: presenter.real01quantity,
                handleValue: presenter.handleReal01quantity,
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
