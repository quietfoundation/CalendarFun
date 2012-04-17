require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test 'full cycle' do

    get :new
    assert_response :success

    assert_difference('Event.count', 1) do
      post :create, event: {name: 'Test1', start_at: Time.now - 1.hour,
        end_at: Time.now + 1.hour, description: 'Run'}
      assert_redirected_to calendar_path
    end

    event = assigns(:event)

    get :show, id: event.id
    assert_response :success

    get :edit, id: event.id
    assert_response :success

    assert_difference('Event.count', 0) do
      put :update, id: event.id, event: {name: 'Test1a'}
      assert_redirected_to calendar_path
    end
    event = assigns(:event)
    assert_equal 'Test1a', event.name

    assert_difference('Event.count', -1) do
      delete :destroy, id: event.id
      assert_redirected_to calendar_path
    end
  end
end
