import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/breakpoints/breakpoints.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';
import 'package:meu_cofrinho/ui/widgets/widgets.dart';

class PiggyBankListPage extends StatelessWidget {
  final PiggyBankListPresenter presenter;

  const PiggyBankListPage({
    Key key,
    @required this.presenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu cofrinhos",
          style: TextAppTheme.appBarTitle(),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: LimitedWidth(
          max: Breakpoints.maxWidth,
          child: FutureBuilder(
            initialData: null,
            future: presenter.load(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("Erro");
              }
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Container();
                  break;
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                  break;
                case ConnectionState.active:
                  return Container();
                  break;
                case ConnectionState.done:
                  return Text("Ok");
                  break;
              }
              return Text("Error");
            },
          ),
        ),
      ),
    );
  }
}
