require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Games.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Games.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Games.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to games_url(assigns(:games))
  end

  def test_edit
    get :edit, :id => Games.first
    assert_template 'edit'
  end

  def test_update_invalid
    Games.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Games.first
    assert_template 'edit'
  end

  def test_update_valid
    Games.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Games.first
    assert_redirected_to games_url(assigns(:games))
  end

  def test_destroy
    games = Games.first
    delete :destroy, :id => games
    assert_redirected_to games_url
    assert !Games.exists?(games.id)
  end
end
