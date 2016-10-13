require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ProjectClassificationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProjectClassification. As you add validations to ProjectClassification, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProjectClassificationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all project_classifications as @project_classifications" do
      project_classification = ProjectClassification.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:project_classifications)).to eq([project_classification])
    end
  end

  describe "GET #show" do
    it "assigns the requested project_classification as @project_classification" do
      project_classification = ProjectClassification.create! valid_attributes
      get :show, {:id => project_classification.to_param}, valid_session
      expect(assigns(:project_classification)).to eq(project_classification)
    end
  end

  describe "GET #new" do
    it "assigns a new project_classification as @project_classification" do
      get :new, {}, valid_session
      expect(assigns(:project_classification)).to be_a_new(ProjectClassification)
    end
  end

  describe "GET #edit" do
    it "assigns the requested project_classification as @project_classification" do
      project_classification = ProjectClassification.create! valid_attributes
      get :edit, {:id => project_classification.to_param}, valid_session
      expect(assigns(:project_classification)).to eq(project_classification)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProjectClassification" do
        expect {
          post :create, {:project_classification => valid_attributes}, valid_session
        }.to change(ProjectClassification, :count).by(1)
      end

      it "assigns a newly created project_classification as @project_classification" do
        post :create, {:project_classification => valid_attributes}, valid_session
        expect(assigns(:project_classification)).to be_a(ProjectClassification)
        expect(assigns(:project_classification)).to be_persisted
      end

      it "redirects to the created project_classification" do
        post :create, {:project_classification => valid_attributes}, valid_session
        expect(response).to redirect_to(ProjectClassification.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved project_classification as @project_classification" do
        post :create, {:project_classification => invalid_attributes}, valid_session
        expect(assigns(:project_classification)).to be_a_new(ProjectClassification)
      end

      it "re-renders the 'new' template" do
        post :create, {:project_classification => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested project_classification" do
        project_classification = ProjectClassification.create! valid_attributes
        put :update, {:id => project_classification.to_param, :project_classification => new_attributes}, valid_session
        project_classification.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested project_classification as @project_classification" do
        project_classification = ProjectClassification.create! valid_attributes
        put :update, {:id => project_classification.to_param, :project_classification => valid_attributes}, valid_session
        expect(assigns(:project_classification)).to eq(project_classification)
      end

      it "redirects to the project_classification" do
        project_classification = ProjectClassification.create! valid_attributes
        put :update, {:id => project_classification.to_param, :project_classification => valid_attributes}, valid_session
        expect(response).to redirect_to(project_classification)
      end
    end

    context "with invalid params" do
      it "assigns the project_classification as @project_classification" do
        project_classification = ProjectClassification.create! valid_attributes
        put :update, {:id => project_classification.to_param, :project_classification => invalid_attributes}, valid_session
        expect(assigns(:project_classification)).to eq(project_classification)
      end

      it "re-renders the 'edit' template" do
        project_classification = ProjectClassification.create! valid_attributes
        put :update, {:id => project_classification.to_param, :project_classification => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested project_classification" do
      project_classification = ProjectClassification.create! valid_attributes
      expect {
        delete :destroy, {:id => project_classification.to_param}, valid_session
      }.to change(ProjectClassification, :count).by(-1)
    end

    it "redirects to the project_classifications list" do
      project_classification = ProjectClassification.create! valid_attributes
      delete :destroy, {:id => project_classification.to_param}, valid_session
      expect(response).to redirect_to(project_classifications_url)
    end
  end

end
