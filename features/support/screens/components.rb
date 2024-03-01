class Navigator

  def tap_lista
    return find_element(xpath: '//androidx.recyclerview.widget.RecyclerView[@resource-id="io.qaninja.android.twp:id/rvSubMenu"]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout').click
  end

  def list
    return find_element(id: 'io.qaninja.android.twp:id/rvList')
  end

#   def lista_heroi
#    case lista_heroi ['Heroi']
#     when 'Capitão America'
#           find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[1]').click
#     when 'Thor'
#           find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[2]').click
#     when 'Homem de Ferro'
#           find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[3]').click
#     when 'Hulk'
#           find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[4]').click
#     when 'Homem Aranha'
#           find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[5]').click
#     else
#           puts 'Não encontrado'
#     end
        
#   end

#      def
#         return find_element(id: 'io.qaninja.android.twp:id/textAboutExtended')
#      end
end