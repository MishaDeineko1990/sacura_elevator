require "test_helper"

class ProductsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @products_group = products_groups(:one)
  end

  test "should get index" do
    get products_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_products_group_url
    assert_response :success
  end

  test "should create products_group" do
    assert_difference('ProductsGroup.count') do
      post products_groups_url, params: { products_group: { name: @products_group.name, number_group: @products_group.number_group } }
    end

    assert_redirected_to products_group_url(ProductsGroup.last)
  end

  test "should show products_group" do
    get products_group_url(@products_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_products_group_url(@products_group)
    assert_response :success
  end

  test "should update products_group" do
    patch products_group_url(@products_group), params: { products_group: { name: @products_group.name, number_group: @products_group.number_group } }
    assert_redirected_to products_group_url(@products_group)
  end

  test "should destroy products_group" do
    assert_difference('ProductsGroup.count', -1) do
      delete products_group_url(@products_group)
    end

    assert_redirected_to products_groups_url
  end
end
