import 'package:ece_app/models/product.dart';
import 'package:ece_app/res/app_icons.dart';
import 'package:ece_app/screens/details/tabs/product_tab0.dart';
import 'package:ece_app/screens/details/tabs/product_tab1.dart';
import 'package:ece_app/screens/details/tabs/product_tab2.dart';
import 'package:ece_app/screens/details/tabs/product_tab3.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  ProductDetailsCurrentTab _currentTab = ProductDetailsCurrentTab.values.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              child: Offstage(
                offstage: _currentTab != ProductDetailsCurrentTab.summary,
                child: ProductPageTab0(),
              ),
            ),
            Positioned.fill(
              child: Offstage(
                offstage: _currentTab != ProductDetailsCurrentTab.info,
                child: ProductPageTab1(),
              ),
            ),
            Positioned.fill(
              child: Offstage(
                offstage: _currentTab != ProductDetailsCurrentTab.nutrition,
                child: ProductPageTab2(),
              ),
            ),
            Positioned.fill(
              child: Offstage(
                offstage:
                    _currentTab != ProductDetailsCurrentTab.nutritionalValues,
                child: ProductPageTab3(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab.index,
        onTap: (int position) {
          _currentTab = ProductDetailsCurrentTab.values[position];
          setState(() {});
        },
        items: ProductDetailsCurrentTab.values
            .map(
              (el) =>
                  BottomNavigationBarItem(icon: Icon(el.icon), label: el.label),
            )
            .toList(growable: false),
      ),
    );
  }
}

enum ProductDetailsCurrentTab {
  summary('Fiche', AppIcons.tab_barcode),
  info('Caractéristiques', AppIcons.tab_fridge),
  nutrition('Nutrition', AppIcons.tab_nutrition),
  nutritionalValues('Tableau', AppIcons.tab_array);

  final String label;
  final IconData icon;

  const ProductDetailsCurrentTab(this.label, this.icon);
}

class ProductProvider extends InheritedWidget {
  const ProductProvider({
    super.key,
    required this.product,
    required super.child,
  });

  final Product product;

  static ProductProvider of(BuildContext context) {
    final ProductProvider? result =
        context.dependOnInheritedWidgetOfExactType<ProductProvider>();
    assert(result != null, 'No ProductProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ProductProvider old) {
    return product != old.product;
  }
}
