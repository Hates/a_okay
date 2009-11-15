require File.dirname(__FILE__) + '/../test_helper.rb'
require 'app/controllers/a_okay_controller'
require 'action_controller/test_process'

class AOkayController; def rescue_action(e) raise e end; end

class AOkayControllerTest < ActionController::TestCase

  def test_show_route
    assert_generates "/a_okay", {:controller => "a_okay", :action => "show"}
  end

  def test_show
    get :show
    assert_equal "Everything is a okay!", @response.body
  end

end

