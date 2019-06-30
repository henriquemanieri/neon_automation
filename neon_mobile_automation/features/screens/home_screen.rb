class HomeScreen < Calabash::ABase

  def validate_home
    wait_for_elements_exist("* id:'imageView7'", timeout:1)
    wait_for_elements_exist("* id:'imageView16'", timeout:1)
  end

  def access_add_user
    touch("* id:'imageView7'")
  end

  def create_user_information
    @name = Faker::Name.name
    @email = Faker::Internet.email
    @cpf = (rand 11111111111..99999999999)
    @number = (rand 11111111111..99999999999)
    @comments = "teste comment"
    @description = "test description"
  end

  def add_user_information
    create_user_information
    enter_text("* id:'txtName'", @name)
    enter_text("* id:'txtEmail'", @email)
    enter_text("* id:'txtCpf'", @cpf)
    enter_text("* id:'txtTelefone'", @phone)
    enter_text("* id:'txtDescricao'", @comments)
    enter_text("* id:'txtObs'", @description)
    touch("* id:'imageView12'")
  end

  def validate_user_information
    wait_for_elements_exist("* id:'txvExCPF'", timeout:1)
    wait_for_elements_exist("* id:'txvExTelefone'", timeout:1)
    wait_for_elements_exist("* id:'txvExEmail'", timeout:1)
    wait_for_elements_exist("* id:'txvExDescricao'", timeout:1)
  end

  def validate_user_box
    wait_for_elements_exist("* id:'imageView6'", timeout:1)
  end

  def click_user_box
    touch("* id:'imageView6'")
  end

  def delete_user
    touch("* id:'imageView16'")
  end

  def confirm_delete_user
    touch("* id:'button1'")
  end

end
