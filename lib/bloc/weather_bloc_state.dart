part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();

  @override
  List<Object> get props => [];
}

// Definiert einen initialen Zustand für den WeatherBloc.
final class WeatherBlocInitial extends WeatherBlocState {}

//Definiert einen Ladezustand für den WeatherBloc.
final class WeatherBlocLoading extends WeatherBlocState {}

// Definiert einen Fehlerzustand für den WeatherBloc
final class WeatherBlocFailure extends WeatherBlocState {}

// Definiert einen Erfolgszustand für den WeatherBloc
final class WeatherBlocSuccess extends WeatherBlocState {
  final Weather weather;

  const WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}
