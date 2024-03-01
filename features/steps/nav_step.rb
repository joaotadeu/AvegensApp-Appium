Dado('que acesso o menu do app') do
  @Navigator.tap_lista
  expect(@Navigator.list.displayed?).to be true
end
  
Quando('seleciono o Heroi da lista') do |table|
  lista_heroi = table.hashes.first
  @Navigator.selecionar_heroi(lista_heroi['Heroi'])
end
  

Então('devo ver a mensagem {string}') do |mensagem_esperada|
    elemento = find_element(id: 'io.qaninja.android.twp:id/textAboutExtended')
    expect(elemento.text).to include(mensagem_esperada)
    unless elemento != mensagem_esperada
      raise "Texto atual '#{texto_atual}' é diferente do texto esperado '#{mensagem_esperada}'"
    end
end
