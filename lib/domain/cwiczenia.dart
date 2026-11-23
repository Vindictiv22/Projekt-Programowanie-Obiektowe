import 'wyjatki.dart';

abstract class Cwiczenie  {
  String _nazwa;
  Cwiczenie(this._nazwa){
    if (_nazwa.trim().isEmpty) {
      throw BlednaNazwa();
    }
  }
  String get nazwa => _nazwa;
}

class CwiczenieSilowe extends Cwiczenie {
  int _liczbaSerii, _ciezar;
  CwiczenieSilowe(String nazwa, this._liczbaSerii, this._ciezar): super(nazwa){
    if (_liczbaSerii<=0) {
      throw BledneSerie();
    }
    if (_ciezar<=0) {
      throw BlednyCiezar();
    }
  }
    int get liczbaSerii => _liczbaSerii;
    int get ciezar =>_ciezar;
}

class CwiczenieCzasowe extends Cwiczenie {
  int _liczbaSerii, _sekundy;
  CwiczenieCzasowe(String nazwa, this._liczbaSerii, this._sekundy): super(nazwa){
    if (_liczbaSerii<=0) {
      throw BledneSerie();
    }
    if (_sekundy<=0) {
      throw BlednyCzas();
    }
  }
    int get liczbaSerii => _liczbaSerii;
    int get czas =>_sekundy;
}