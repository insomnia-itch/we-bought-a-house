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

RSpec.describe "/contracts", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Contract. As you add validations to Contract, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Contract.create! valid_attributes
      get contracts_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      contract = Contract.create! valid_attributes
      get contract_url(contract)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_contract_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      contract = Contract.create! valid_attributes
      get edit_contract_url(contract)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Contract" do
        expect {
          post contracts_url, params: { contract: valid_attributes }
        }.to change(Contract, :count).by(1)
      end

      it "redirects to the created contract" do
        post contracts_url, params: { contract: valid_attributes }
        expect(response).to redirect_to(contract_url(Contract.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Contract" do
        expect {
          post contracts_url, params: { contract: invalid_attributes }
        }.to change(Contract, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post contracts_url, params: { contract: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested contract" do
        contract = Contract.create! valid_attributes
        patch contract_url(contract), params: { contract: new_attributes }
        contract.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the contract" do
        contract = Contract.create! valid_attributes
        patch contract_url(contract), params: { contract: new_attributes }
        contract.reload
        expect(response).to redirect_to(contract_url(contract))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        contract = Contract.create! valid_attributes
        patch contract_url(contract), params: { contract: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested contract" do
      contract = Contract.create! valid_attributes
      expect {
        delete contract_url(contract)
      }.to change(Contract, :count).by(-1)
    end

    it "redirects to the contracts list" do
      contract = Contract.create! valid_attributes
      delete contract_url(contract)
      expect(response).to redirect_to(contracts_url)
    end
  end
end
