require 'test_helper'

class BusinessPartnersControllerTest < ActionController::TestCase
  setup do
    @business_partner = business_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_partner" do
    assert_difference('BusinessPartner.count') do
      post :create, :business_partner => @business_partner.attributes
    end

    assert_redirected_to business_partner_path(assigns(:business_partner))
  end

  test "should show business_partner" do
    get :show, :id => @business_partner.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @business_partner.to_param
    assert_response :success
  end

  test "should update business_partner" do
    put :update, :id => @business_partner.to_param, :business_partner => @business_partner.attributes
    assert_redirected_to business_partner_path(assigns(:business_partner))
  end

  test "should destroy business_partner" do
    assert_difference('BusinessPartner.count', -1) do
      delete :destroy, :id => @business_partner.to_param
    end

    assert_redirected_to business_partners_path
  end
end
