import 'package:flutter_ecommerce/models/app_state.dart';
import 'package:flutter_ecommerce/redux/actions.dart';

AppState appReducer(state, action) {
  return AppState(user: userReducer(state.user, action), cardToken: ''
      // products: productsReducer(state.products, action),
      // cartProducts: cartProducts(state.cartProducts, action),
      // cards: cardsReducer(state.cards, action),
      // cardToken: cardTokenReducer(state.cardToken, action),
      // orders: ordersReducer(state.orders, action));
      );
}

userReducer(user, action) {
  if (action is GetUserAction) {
    return action.user;
  }
  // else if (action is LogoutUserAction) {
  //   return action.user;
  // }
  return user;
}
