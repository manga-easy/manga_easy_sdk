enum StatusLibrary {
  lendo('Lendo'),
  dropado('Dropado'),
  lido('Concluído'),
  planejo('Em espera');

  final String title;
  const StatusLibrary(this.title);

  static StatusLibrary fromString(String? status) {
    switch (status) {
      case 'lendo':
        return StatusLibrary.lendo;
      case 'dropado':
        return StatusLibrary.dropado;
      case 'lido':
        return StatusLibrary.lido;
      case 'planejo':
        return StatusLibrary.planejo;
      default:
        return StatusLibrary.lendo;
    }
  }
}
