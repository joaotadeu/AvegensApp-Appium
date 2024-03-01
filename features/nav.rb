Dado('que acesso o menu do app') do
    find_element(xpath: '//androidx.recyclerview.widget.RecyclerView[@resource-id="io.qaninja.android.twp:id/rvSubMenu"]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout').click
    lista = find_element(id: 'io.qaninja.android.twp:id/rvList')
    expect(lista.displayed?).to be true
    sleep 3
end
  
Quando('seleciono o Heroi da lista') do |table|
    lista_heroi = table.hashes.first
    case lista_heroi ['Heroi']
        when 'Capitão America'
          find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[1]').click
        when 'Thor'
          find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[2]').click
        when 'Homem de Ferro'
          find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[3]').click
        when 'Hulk'
          find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[4]').click
        when 'Homem Aranha'
          find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[5]').click
        else
          puts 'Não encontrado'
        end
end
  

Então('devo ver a mensagem {string}') do |mensagem_esperada|
    elemento = find_element(id: 'io.qaninja.android.twp:id/textAboutExtended')
    expect(elemento.text).to include(mensagem_esperada)
    unless elemento != mensagem_esperada
      raise "Texto atual '#{texto_atual}' é diferente do texto esperado '#{mensagem_esperada}'"
    end
end
