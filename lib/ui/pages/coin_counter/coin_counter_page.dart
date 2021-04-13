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
            padding: EdgeInsets.all(12),
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
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) => SizedBox(
                      height: 200,
                      width: double.maxFinite,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                presenter.getFormattedTotalValue(),
                                style: TextAppTheme.h3(color: Colors.black),
                              ),
                              Space(vertical: 8),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "+ INFORMAÇÕES",
                                  style: TextStyle(
                                    color: ColorAppTheme.accentColor,
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Text('Calcular'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
