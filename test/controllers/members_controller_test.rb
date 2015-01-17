require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { adress: @member.adress, adressNr: @member.adressNr, dob: @member.dob, first_name: @member.first_name, insert: @member.insert, last_name: @member.last_name, membershipYear: @member.membershipYear, phone: @member.phone, zipcode: @member.zipcode }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { adress: @member.adress, adressNr: @member.adressNr, dob: @member.dob, first_name: @member.first_name, insert: @member.insert, last_name: @member.last_name, membershipYear: @member.membershipYear, phone: @member.phone, zipcode: @member.zipcode }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
