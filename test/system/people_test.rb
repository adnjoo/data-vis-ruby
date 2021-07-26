require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Address1", with: @person.address1
    fill_in "Address2", with: @person.address2
    fill_in "City", with: @person.city
    fill_in "Education", with: @person.education
    fill_in "Estimated income", with: @person.estimated_income
    fill_in "F name", with: @person.f_name
    fill_in "L name", with: @person.l_name
    fill_in "M name", with: @person.m_name
    fill_in "Prefix", with: @person.prefix
    fill_in "State", with: @person.state
    fill_in "Zipcode", with: @person.zipcode
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @person.address1
    fill_in "Address2", with: @person.address2
    fill_in "City", with: @person.city
    fill_in "Education", with: @person.education
    fill_in "Estimated income", with: @person.estimated_income
    fill_in "F name", with: @person.f_name
    fill_in "L name", with: @person.l_name
    fill_in "M name", with: @person.m_name
    fill_in "Prefix", with: @person.prefix
    fill_in "State", with: @person.state
    fill_in "Zipcode", with: @person.zipcode
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
