class BlednyCiezar implements Exception {
  @override
  String toString(){
    return "wpisz dodatni ciezar";
  }
}

class BledneSerie implements Exception {
  @override
  String toString(){
    return "wpisz dodatnia liczbe serii";
  }
}

class BlednaNazwa implements Exception {
  @override
  String toString(){
    return "brak nazwy ćwiczenia";
  }
}
