require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact_me" do
    message = Message.new name: 'Adrien',
                          email: 'adriaandrum@gmail.com',
                          body: 'Message received, thanks !'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from www.mamamoto.co', email.subject
    assert_equal ['adrienfloor@gmail.com'], email.to
    assert_equal ['adriaandrum@gmail.com'], email.from
    assert_match /Message received, thanks !/, email.body.encoded
  end

end
