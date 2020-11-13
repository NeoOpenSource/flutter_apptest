
import 'package:equatable/equatable.dart';

abstract class HttpEvent extends Equatable{
  const HttpEvent();
}


class UserEvent extends HttpEvent {
  const UserEvent();
}

