require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  #test1

  test 'responds to name, email and body' do
  msg = Message.new

  assert msg.respond_to?(:name),  'does not respond to :name'
  assert msg.respond_to?(:email), 'does not respond to :email'
  assert msg.respond_to?(:body),  'does not respond to :body'
  end

  #test2

  test 'should be valid when all attibutes are set' do
    attrs = {
      name: 'adrien',
      email: 'adrienfloor@gmail.com',
      body: 'this a test body'
    }

    msg = Message.new attrs
    assert msg.valid?, 'should be valid'
  end

  #test3

  test 'name, email and body are required by law' do
    msg = Message.new

    refute msg.valid?, 'Blank Message should be invalid'

    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:body].to_s
  end


end
