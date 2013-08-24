require 'spec_helper'

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

describe SparesController do

  # This should return the minimal set of attributes required to create a valid
  # Spare. As you add validations to Spare, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "description" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SparesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all spares as @spares" do
      spare = Spare.create! valid_attributes
      get :index, {}, valid_session
      assigns(:spares).should eq([spare])
    end
  end

  describe "GET show" do
    it "assigns the requested spare as @spare" do
      spare = Spare.create! valid_attributes
      get :show, {:id => spare.to_param}, valid_session
      assigns(:spare).should eq(spare)
    end
  end

  describe "GET new" do
    it "assigns a new spare as @spare" do
      get :new, {}, valid_session
      assigns(:spare).should be_a_new(Spare)
    end
  end

  describe "GET edit" do
    it "assigns the requested spare as @spare" do
      spare = Spare.create! valid_attributes
      get :edit, {:id => spare.to_param}, valid_session
      assigns(:spare).should eq(spare)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Spare" do
        expect {
          post :create, {:spare => valid_attributes}, valid_session
        }.to change(Spare, :count).by(1)
      end

      it "assigns a newly created spare as @spare" do
        post :create, {:spare => valid_attributes}, valid_session
        assigns(:spare).should be_a(Spare)
        assigns(:spare).should be_persisted
      end

      it "redirects to the created spare" do
        post :create, {:spare => valid_attributes}, valid_session
        response.should redirect_to(Spare.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved spare as @spare" do
        # Trigger the behavior that occurs when invalid params are submitted
        Spare.any_instance.stub(:save).and_return(false)
        post :create, {:spare => { "description" => "invalid value" }}, valid_session
        assigns(:spare).should be_a_new(Spare)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Spare.any_instance.stub(:save).and_return(false)
        post :create, {:spare => { "description" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested spare" do
        spare = Spare.create! valid_attributes
        # Assuming there are no other spares in the database, this
        # specifies that the Spare created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Spare.any_instance.should_receive(:update_attributes).with({ "description" => "MyText" })
        put :update, {:id => spare.to_param, :spare => { "description" => "MyText" }}, valid_session
      end

      it "assigns the requested spare as @spare" do
        spare = Spare.create! valid_attributes
        put :update, {:id => spare.to_param, :spare => valid_attributes}, valid_session
        assigns(:spare).should eq(spare)
      end

      it "redirects to the spare" do
        spare = Spare.create! valid_attributes
        put :update, {:id => spare.to_param, :spare => valid_attributes}, valid_session
        response.should redirect_to(spare)
      end
    end

    describe "with invalid params" do
      it "assigns the spare as @spare" do
        spare = Spare.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Spare.any_instance.stub(:save).and_return(false)
        put :update, {:id => spare.to_param, :spare => { "description" => "invalid value" }}, valid_session
        assigns(:spare).should eq(spare)
      end

      it "re-renders the 'edit' template" do
        spare = Spare.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Spare.any_instance.stub(:save).and_return(false)
        put :update, {:id => spare.to_param, :spare => { "description" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested spare" do
      spare = Spare.create! valid_attributes
      expect {
        delete :destroy, {:id => spare.to_param}, valid_session
      }.to change(Spare, :count).by(-1)
    end

    it "redirects to the spares list" do
      spare = Spare.create! valid_attributes
      delete :destroy, {:id => spare.to_param}, valid_session
      response.should redirect_to(spares_url)
    end
  end

end
