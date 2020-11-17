require './test/test_helper'

class GraduateTest < ActiveSupport::TestCase
  test 'graduate' do
    info = {
      first_name: 'Diane',
      last_name: 'Price',
      city: 'Themyscira',
      state: 'Island',
      title: 'Superhero',
      company: 'Shield',
      software: 'N'
    }
    graduate = Graduate.create(info)
    assert graduate.valid?
  end

  test 'invalid without all fields' do
    info = {
      first_name: 'Diane',
      last_name: 'Price',
      city: 'Themyscira',
      state: '',
      title: 'Superhero',
      company: 'Shield',
      software: 'N'
    }
    graduate = Graduate.create(info)
    refute graduate.valid?
    assert_not_nil graduate.errors[:state]
  end
end
