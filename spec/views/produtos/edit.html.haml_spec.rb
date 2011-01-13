require 'spec_helper'

describe "produtos/edit.html.haml" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :preco => "9.99",
      :descricao => "MyText",
      :status => "MyString",
      :quantidade => 1,
      :dono => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produto_path(@produto), :method => "post" do
      assert_select "input#produto_nome", :name => "produto[nome]"
      assert_select "input#produto_preco", :name => "produto[preco]"
      assert_select "textarea#produto_descricao", :name => "produto[descricao]"
      assert_select "input#produto_status", :name => "produto[status]"
      assert_select "input#produto_quantidade", :name => "produto[quantidade]"
      assert_select "input#produto_dono", :name => "produto[dono]"
      assert_select "input#produto_email", :name => "produto[email]"
    end
  end
end
