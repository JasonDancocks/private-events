require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @event = events(:one)
  end

  test "should redirect create when not logged in" do
    assert_no_difference "Event.count" do
      post events_path, params: {event: { name: "Test"}}
    end
    assert_redirected_to new_session_url
  end



end
