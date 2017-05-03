class EarthtoolsQueriesController < ApplicationController
  before_action :force_initialize_session, only: :create

  def new
    @earthtools_query = EarthtoolsQuery.new
  end

  def create
    @earthtools_query = EarthtoolsQuery.new(earthtools_query_params)

    @earthtools_query.assign_attributes(
      session_id: session.id,
      response: "test"
    )

    if @earthtools_query.save
      redirect_to @earthtools_query
    else
      render action: "new"
    end
  end

  def show
    @earthtools_query = EarthtoolsQuery.find(params[:id])
  end

  private

  def force_initialize_session
    session[:init] = true
  end

  def earthtools_query_params
    params.require(:earthtools_query).permit(:lat, :lon)
  end
end
