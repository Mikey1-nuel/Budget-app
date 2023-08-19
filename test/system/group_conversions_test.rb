require 'application_system_test_case'

class GroupConversionsTest < ApplicationSystemTestCase
  setup do
    @group_conversion = group_conversions(:one)
  end

  test 'visiting the index' do
    visit group_conversions_url
    assert_selector 'h1', text: 'Group conversions'
  end

  test 'should create group conversion' do
    visit group_conversions_url
    click_on 'New group conversion'

    fill_in 'Conversion', with: @group_conversion.conversion_id
    fill_in 'Group', with: @group_conversion.group_id
    click_on 'Create Group conversion'

    assert_text 'Group conversion was successfully created'
    click_on 'Back'
  end

  test 'should update Group conversion' do
    visit group_conversion_url(@group_conversion)
    click_on 'Edit this group conversion', match: :first

    fill_in 'Conversion', with: @group_conversion.conversion_id
    fill_in 'Group', with: @group_conversion.group_id
    click_on 'Update Group conversion'

    assert_text 'Group conversion was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Group conversion' do
    visit group_conversion_url(@group_conversion)
    click_on 'Destroy this group conversion', match: :first

    assert_text 'Group conversion was successfully destroyed'
  end
end
