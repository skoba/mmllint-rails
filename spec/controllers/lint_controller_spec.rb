require 'rails_helper'

RSpec.describe LintController, type: :controller do
  context 'render default page' do
    before(:each) { get :exam }
    render_views

    it 'renders exam template' do
      expect(response).to render_template :exam
    end

    it 'does not render sucess partial' do
      expect(response).not_to render_template(partial: '_success')
    end
  end

  context 'validation passed' do
    render_views

    it 'renders successful result' do
      post :validate, params: {mml: VALID_MML}
      expect(response).to render_template(partial: '_success')
    end
  end

  context 'validation failed' do
    render_views
    before { post :validate, params: {mml: INVALID_MML } }
    
    it 'renders failed result' do
      expect(response).to render_template(partial: '_failure')
    end

    it 'renders descrtion for failing' do
      expect(response.body).not_to include '#<Nokogiri::XML::SyntaxError:'
    end
  end
end
