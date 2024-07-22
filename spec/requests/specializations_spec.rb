require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/specializations", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Specialization. As you add validations to Specialization, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Specialization.create! valid_attributes
      get specializations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      specialization = Specialization.create! valid_attributes
      get specialization_url(specialization)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_specialization_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      specialization = Specialization.create! valid_attributes
      get edit_specialization_url(specialization)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Specialization" do
        expect {
          post specializations_url, params: { specialization: valid_attributes }
        }.to change(Specialization, :count).by(1)
      end

      it "redirects to the created specialization" do
        post specializations_url, params: { specialization: valid_attributes }
        expect(response).to redirect_to(specialization_url(Specialization.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Specialization" do
        expect {
          post specializations_url, params: { specialization: invalid_attributes }
        }.to change(Specialization, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post specializations_url, params: { specialization: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested specialization" do
        specialization = Specialization.create! valid_attributes
        patch specialization_url(specialization), params: { specialization: new_attributes }
        specialization.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the specialization" do
        specialization = Specialization.create! valid_attributes
        patch specialization_url(specialization), params: { specialization: new_attributes }
        specialization.reload
        expect(response).to redirect_to(specialization_url(specialization))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        specialization = Specialization.create! valid_attributes
        patch specialization_url(specialization), params: { specialization: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested specialization" do
      specialization = Specialization.create! valid_attributes
      expect {
        delete specialization_url(specialization)
      }.to change(Specialization, :count).by(-1)
    end

    it "redirects to the specializations list" do
      specialization = Specialization.create! valid_attributes
      delete specialization_url(specialization)
      expect(response).to redirect_to(specializations_url)
    end
  end
end
