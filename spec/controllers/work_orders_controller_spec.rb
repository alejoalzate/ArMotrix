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

describe WorkOrdersController do

  # This should return the minimal set of attributes required to create a valid
  # WorkOrder. As you add validations to WorkOrder, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "document" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WorkOrdersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all work_orders as @work_orders" do
      work_order = WorkOrder.create! valid_attributes
      get :index, {}, valid_session
      assigns(:work_orders).should eq([work_order])
    end
  end

  describe "GET show" do
    it "assigns the requested work_order as @work_order" do
      work_order = WorkOrder.create! valid_attributes
      get :show, {:id => work_order.to_param}, valid_session
      assigns(:work_order).should eq(work_order)
    end
  end

  describe "GET new" do
    it "assigns a new work_order as @work_order" do
      get :new, {}, valid_session
      assigns(:work_order).should be_a_new(WorkOrder)
    end
  end

  describe "GET edit" do
    it "assigns the requested work_order as @work_order" do
      work_order = WorkOrder.create! valid_attributes
      get :edit, {:id => work_order.to_param}, valid_session
      assigns(:work_order).should eq(work_order)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new WorkOrder" do
        expect {
          post :create, {:work_order => valid_attributes}, valid_session
        }.to change(WorkOrder, :count).by(1)
      end

      it "assigns a newly created work_order as @work_order" do
        post :create, {:work_order => valid_attributes}, valid_session
        assigns(:work_order).should be_a(WorkOrder)
        assigns(:work_order).should be_persisted
      end

      it "redirects to the created work_order" do
        post :create, {:work_order => valid_attributes}, valid_session
        response.should redirect_to(WorkOrder.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved work_order as @work_order" do
        # Trigger the behavior that occurs when invalid params are submitted
        WorkOrder.any_instance.stub(:save).and_return(false)
        post :create, {:work_order => { "document" => "invalid value" }}, valid_session
        assigns(:work_order).should be_a_new(WorkOrder)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        WorkOrder.any_instance.stub(:save).and_return(false)
        post :create, {:work_order => { "document" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested work_order" do
        work_order = WorkOrder.create! valid_attributes
        # Assuming there are no other work_orders in the database, this
        # specifies that the WorkOrder created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        WorkOrder.any_instance.should_receive(:update_attributes).with({ "document" => "" })
        put :update, {:id => work_order.to_param, :work_order => { "document" => "" }}, valid_session
      end

      it "assigns the requested work_order as @work_order" do
        work_order = WorkOrder.create! valid_attributes
        put :update, {:id => work_order.to_param, :work_order => valid_attributes}, valid_session
        assigns(:work_order).should eq(work_order)
      end

      it "redirects to the work_order" do
        work_order = WorkOrder.create! valid_attributes
        put :update, {:id => work_order.to_param, :work_order => valid_attributes}, valid_session
        response.should redirect_to(work_order)
      end
    end

    describe "with invalid params" do
      it "assigns the work_order as @work_order" do
        work_order = WorkOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WorkOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => work_order.to_param, :work_order => { "document" => "invalid value" }}, valid_session
        assigns(:work_order).should eq(work_order)
      end

      it "re-renders the 'edit' template" do
        work_order = WorkOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WorkOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => work_order.to_param, :work_order => { "document" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested work_order" do
      work_order = WorkOrder.create! valid_attributes
      expect {
        delete :destroy, {:id => work_order.to_param}, valid_session
      }.to change(WorkOrder, :count).by(-1)
    end

    it "redirects to the work_orders list" do
      work_order = WorkOrder.create! valid_attributes
      delete :destroy, {:id => work_order.to_param}, valid_session
      response.should redirect_to(work_orders_url)
    end
  end

end
