import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/favorite_cubit.dart';
import 'favorite_screen_content.dart';

class FavoriteScreen extends StatefulWidget {
  static const routeName = "favoriteScreen/";

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<FavoriteCubit>(
      context,
      listen: false,
    ).getFavorites(CancelToken());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return state.map(
          favInitState: (_) => WaitingWidget(),
          favLoadingState: (_) => WaitingWidget(),
          getFavLoadedState: (s) => FavoriteScreenContent(
            getFavoriteEntity: s.favEntity!,
          ),
          favErrorState: (e) => ErrorScreenWidget(
            error: e.error!,
            callback: e.callback,
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
