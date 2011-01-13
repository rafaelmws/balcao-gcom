require 'spec_helper'

describe "produtos/index.html.haml" do
  before(:each) do
    assign(:produtos, [
      stub_model(Produto,
        :nome => "Nome",
        :preco => "9.99",
        :descricao => "MyText",
        :status => "Status",
        :quantidade => 1,
        :dono => "Dono",
        :email => "Email"
      ),
      stub_model(Produto,
        :nome => "Nome",
        :preco => "9.99",
        :descricao => "MyText",
        :status => "Status",
        :quantidade => 1,
        :dono => "Dono",
        :email => "Email"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dono".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
