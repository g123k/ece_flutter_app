// Event
import 'package:ece_app/models/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ProductEvent {}

class LoadProductEvent extends ProductEvent {
  final String barcode;

  LoadProductEvent(this.barcode) : assert(barcode.isNotEmpty);
}

// BLoC
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  // Valeur initiale
  ProductBloc(String barcode) : super(LoadingProductState()) {
    on<LoadProductEvent>(_onLoadProduct);
    add(LoadProductEvent((barcode)));
  }

  Future<void> _onLoadProduct(
    ProductEvent event,
    Emitter<ProductState> emitter,
  ) async {
    // TODO
    emitter(LoadingProductState());

    try {
      await Future.delayed(Duration(seconds: 2));

      emitter(SuccessProductState(generateProduct()));
    } catch (e) {
      emitter(ErrorProductState(e));
    }
  }
}

// State
sealed class ProductState {}

class LoadingProductState extends ProductState {}

class SuccessProductState extends ProductState {
  final Product product;

  SuccessProductState(this.product);
}

class ErrorProductState extends ProductState {
  final dynamic error;

  ErrorProductState(this.error);
}
