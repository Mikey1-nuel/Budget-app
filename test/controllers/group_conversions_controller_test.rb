require "test_helper"

class GroupConversionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_conversion = group_conversions(:one)
  end

  test "should get index" do
    get group_conversions_url
    assert_response :success
  end

  test "should get new" do
    get new_group_conversion_url
    assert_response :success
  end

  test "should create group_conversion" do
    assert_difference("GroupConversion.count") do
      post group_conversions_url, params: { group_conversion: { conversion_id: @group_conversion.conversion_id, group_id: @group_conversion.group_id } }
    end

    assert_redirected_to group_conversion_url(GroupConversion.last)
  end

  test "should show group_conversion" do
    get group_conversion_url(@group_conversion)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_conversion_url(@group_conversion)
    assert_response :success
  end

  test "should update group_conversion" do
    patch group_conversion_url(@group_conversion), params: { group_conversion: { conversion_id: @group_conversion.conversion_id, group_id: @group_conversion.group_id } }
    assert_redirected_to group_conversion_url(@group_conversion)
  end

  test "should destroy group_conversion" do
    assert_difference("GroupConversion.count", -1) do
      delete group_conversion_url(@group_conversion)
    end

    assert_redirected_to group_conversions_url
  end
end
