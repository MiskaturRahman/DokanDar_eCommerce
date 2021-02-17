import 'package:flutter_ecommerce/models/app_state.dart';
import 'package:flutter_ecommerce/models/user.dart';
import 'package:flutter_ecommerce/redux/actions.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    user: userReducer(state.user, action),
    products: productsReducer(state.products, action), cardToken: '',
    // cartProducts: cartProducts(state.cartProducts, action),
    // cards: cardsReducer(state.cards, action),
    // cardToken: cardTokenReducer(state.cardToken, action),
    // orders: ordersReducer(state.orders, action));
  );
}

User userReducer(User user, dynamic action) {
  if (action is GetUserAction) {
    return action.user;
  }
  // else if (action is LogoutUserAction) {
  //   return action.user;
  // }
  return user;
}

List<dynamic> productsReducer(List<dynamic> products, dynamic action) {
  if (action is GetProductsAction) {
    return action.products;
  }
  return products;
}
