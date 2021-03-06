require "rails_helper"

RSpec.describe MyJobsController, type: :controller do
  before do
    @user = create(:user)
    allow_any_instance_of(ApplicationController)
      .to receive(:current_user).and_return(@user)
  end

  it "#index" do
    @job = create(:job)
    @user.jobs_liked << @job
    get :index

    expect(@user.jobs_liked.first).to eq(@job)
  end
end
