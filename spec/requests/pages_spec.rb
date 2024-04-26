RSpec.describe 'Pages', type: :request do
  let!(:user) { create(:user) }

  describe 'GET /home' do
    before { sign_in user }

    it 'returns http success' do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end
end
