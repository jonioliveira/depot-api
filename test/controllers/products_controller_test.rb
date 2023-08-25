require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @title = "The Great Book #{rand(1000)}"
  end

  test 'should get index' do
    get products_url, as: :json
    assert_response :success
  end

  test 'should create product' do
    assert_difference('Product.count') do
      post products_url,
           params: {
             product: {
               description: @product.description,
               image_url: @product.image_url,
               price: @product.price,
               title: @title
             }
           }, as: :json
    end

    assert_response :created
  end

  test 'should show product' do
    get product_url(@product), as: :json
    assert_response :success
  end

  test 'should update product' do
    patch product_url(@product),
          params: {
            product: {
              description: @product.description,
              image_url: @product.image_url,
              price: @product.price,
              title: @title
            }
          }, as: :json
    assert_response :success
  end

  test 'should destroy product' do
    assert_difference('Product.count', -1) do
      delete product_url(@product), as: :json
    end

    assert_response :no_content
  end
end
