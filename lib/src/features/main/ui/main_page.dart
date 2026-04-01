import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zenith_retail/src/features/cart/bloc/cart_bloc.dart';
import 'package:zenith_retail/src/features/cart/ui/cart_page.dart';
import 'package:zenith_retail/src/features/catalog/ui/catalog_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    CatalogPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final totalItems = state.items.fold<int>(
            0,
            (previousValue, item) => previousValue + item.quantity,
          );

          return BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.storefront),
                label: 'Каталог',
              ),
              BottomNavigationBarItem(
                icon: Badge(
                  isLabelVisible: totalItems > 0,
                  label: Text(totalItems.toString()),
                  child: const Icon(Icons.shopping_cart),
                ),
                label: 'Корзина',
              ),
            ],
          );
        },
      ),
    );
  }
}
