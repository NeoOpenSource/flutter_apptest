
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_apptest/HttpEvent.dart';
import 'package:flutter_apptest/HttpState.dart';

import 'UserRepository.dart';
class UserBloc extends Bloc<HttpEvent,HttpState>{

  final UserRepository _userRepository;

  UserBloc({@required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository, super(UserEmpty());
  
  //UserBloc(HttpState initialState, this._userRepository) : super(initialState);
  

  //UserBloc({@required UserRepository userRepository})
      //: assert(userRepository != null), _userRepository = userRepository, super(null);
  // @override
  // HttpState get initialState => UserEmpty();

  @override
  Stream<HttpState> mapEventToState(HttpEvent event) async* {
      if(event is UserEvent){
        yield UserLoading();
        try{
          final  data = await _userRepository.getUsersList();
          yield UserLoaded(user:data);
        }catch(_){
          yield UserError();
        }
      }
  }
  

//  @override
  //   Stream<QuoteState> mapEventToState(QuoteEvent event) async* {
  //   if(event is FetchQuote) {
  //     yield QuoteLoading();
  //     try {
  //       final Quote quote = await repository.fetchQuote();
  //       yield QuoteLoaded(quote: quote);
  //     } catch (_) {
  //       yield QuoteError();
  //     }
  //   }
  // }

}