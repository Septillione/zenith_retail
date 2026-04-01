import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zenith_retail/src/features/cart/bloc/cart_bloc.dart';
import 'package:zenith_retail/src/shared/api/models/product.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
          id: '1',
          name: 'MacBook Pro 16',
          price: 2499.0,
          imageUrl: 'assets/images/macbook.jpg'),
      Product(
          id: '2',
          name: 'iPhone 15 Pro',
          price: 999.0,
          imageUrl: 'assets/images/iphone.jpg'),
      Product(
          id: '3',
          name: 'AirPods Max',
          price: 549.0,
          imageUrl: 'assets/images/airpods.jpg'),
      Product(
          id: '4',
          name: 'Apple Watch',
          price: 399.0,
          imageUrl: 'assets/images/watch.jpg'),
      Product(
          id: '5',
          name: 'iPad Pro',
          price: 1099.0,
          imageUrl: 'assets/images/ipad.jpg'),
      Product(
          id: '6',
          name: 'Magic Mouse',
          price: 99.0,
          imageUrl: 'assets/images/mouse.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Витрина',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            builder: (context) => _AIRecommendationsSheet(products: products),
          );
        },
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.auto_awesome),
        label: const Text('ИИ-подбор',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.asset(
                      product.imageUrl,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey.shade200,
                        child: const Center(
                            child: Icon(Icons.image_not_supported,
                                size: 50, color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 4),
                      Text('\$${product.price.toStringAsFixed(0)}',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w900,
                              fontSize: 16)),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<CartBloc>()
                                .add(CartEvent.itemAdded(product));
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('${product.name} в корзине'),
                                  behavior: SnackBarBehavior.floating,
                                  duration: const Duration(seconds: 1)),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: const Text('Купить'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _AIRecommendationsSheet extends StatefulWidget {
  final List<Product> products;
  const _AIRecommendationsSheet({required this.products});

  @override
  State<_AIRecommendationsSheet> createState() =>
      _AIRecommendationsSheetState();
}

class _AIRecommendationsSheetState extends State<_AIRecommendationsSheet> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (mounted) setState(() => _isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final recommendedProduct = widget.products[2];

    return Container(
      padding: const EdgeInsets.all(24),
      height: 300,
      width: double.infinity,
      child: _isLoading
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(color: Colors.black87),
                const SizedBox(height: 24),
                Text('✨ ИИ анализирует тренды...',
                    style:
                        TextStyle(fontSize: 16, color: Colors.grey.shade700)),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.auto_awesome, color: Colors.amber),
                    const SizedBox(width: 8),
                    Text('Выбор ИИ для вас',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                    'Нейросеть проанализировала ваши действия и считает, что этот товар идеально вам подойдет:',
                    style: TextStyle(color: Colors.grey.shade700)),
                const SizedBox(height: 16),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      recommendedProduct.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey,
                          child: const Icon(Icons.error)),
                    ),
                  ),
                  title: Text(recommendedProduct.name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('\$${recommendedProduct.price}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  trailing: ElevatedButton(
                    onPressed: () {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.itemAdded(recommendedProduct));
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text('Отличный выбор! Добавлено в корзину.')));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        foregroundColor: Colors.white),
                    child: const Text('В корзину'),
                  ),
                ),
              ],
            ),
    );
  }
}
