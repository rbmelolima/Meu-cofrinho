import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';

import '../widgets.dart';

class MoneyCard extends StatefulWidget {
  final String pathImageAsset;
  final String description;
  final Function handleValue;
  final Stream<int> quantity;

  const MoneyCard({
    Key key,
    @required this.pathImageAsset,
    @required this.description,
    this.handleValue,
    this.quantity,
  }) : super(key: key);

  @override
  _MoneyCardState createState() => _MoneyCardState();
}

class _MoneyCardState extends State<MoneyCard> {
  TextEditingController controller;

  @override
  void initState() {
    controller = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Row(
        children: [
          _CircularImageMoney(widget: widget),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.description,
                style: TextAppTheme.h5(),
              ),
              Space(vertical: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _DecrementButton(widget: widget),
                  Space(horizontal: 8),
                  StreamBuilder<int>(
                      stream: widget.quantity,
                      initialData: 0,
                      builder: (context, snapshot) {
                        var actualValue = snapshot.data;
                        controller.text = snapshot.data.toString();
                        return SizedBox(
                          height: 40,
                          width: 80,
                          child: Container(
                            child: TextField(
                              controller: controller,
                              keyboardType: TextInputType.number,
                              cursorColor: ColorAppTheme.accentColor,
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              onChanged: (value) {
                                //TODO: Corrigir comportamento estranho dos inputs
                                widget.handleValue(-(actualValue));
                                if (value != null && value != '' && int.tryParse(value) >= 0) {
                                  widget.handleValue(int.parse(value));
                                }
                              },
                            ),
                          ),
                        );
                      }),
                  Space(horizontal: 8),
                  _IncrementButton(widget: widget),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _CircularImageMoney extends StatelessWidget {
  const _CircularImageMoney({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final MoneyCard widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.only(right: 24),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      child: Image(image: AssetImage(widget.pathImageAsset)),
    );
  }
}

class _IncrementButton extends StatelessWidget {
  const _IncrementButton({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final MoneyCard widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: ElevatedButton(
        onPressed: () => widget.handleValue(1),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(4),
          onPrimary: Colors.white,
          primary: ColorAppTheme.primaryColor,
        ),
        child: Text("+"),
      ),
    );
  }
}

class _DecrementButton extends StatelessWidget {
  const _DecrementButton({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final MoneyCard widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: ElevatedButton(
        onPressed: () => widget.handleValue(-1),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(4),
          onPrimary: Colors.white,
          primary: ColorAppTheme.primaryColor,
        ),
        child: Text("-"),
      ),
    );
  }
}
