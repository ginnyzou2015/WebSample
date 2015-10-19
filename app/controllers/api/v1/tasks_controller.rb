class Api::V1::TasksController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  # before_filter :authenticate_user!

  respond_to :json

  def index
    @email_id = params[:id] + ".com"
    @beacon_id = User.find_by_email(@email_id).beacon_id
    
    render :status => 200,
           :json => { :success => true,
                      :info => "Logged in",
                      :data => {  :tasks => [
                                              @beacon_id,
                                              @email_id ] }}
  end
end