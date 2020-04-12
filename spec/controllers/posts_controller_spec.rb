RSpec.describe PostsController, type: :controller do

  describe 'creates new post' do
    it 'routes a new post' do
      get :new
      expect(response).to have_http_status(200)
    end

    it 'creates a new post' do
      post :new, params: { post: {image: "http:image.com"} }
      expect(response).to redirect_to()
    end
  end

  describe 'shows posts' do
    it 'responds with 200' do
      get :show
      expect(response).to have_http_status(200)
    end
  end

  describe 'root to home' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

end
