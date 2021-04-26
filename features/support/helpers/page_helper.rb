# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), '../page/*.rb')].each { |file| require file }

# Depois que pegar os arquivos com (_page.rb) estancio todos as suas variaveis
module PageHelper
  def page_login
    @page_login = LogIn.new
  end
  def page_profile
    @page_profile = Profile.new
  end
end

World PageHelper
