class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find_by(id: params[:id])
    redirect_to candidates_path if @candidate.nil?
  end

  def edit
    @candidate = Candidate.find_by(id: params[:id])
    redirect_to candidates_path if @candidate.nil?
  end

  def update
    @candidate = Candidate.find_by(id: params[:id])
    redirect_to candidates_path if @candidate.nil?

    if @candidate.update(candidate_params)
      redirect_to candidates_path
    else
      render "edit"
    end
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to candidates_path
    else
      render "new"
    end
  end

  private
  def candidate_params
    params.require(:candidate).permit(:name, :party, :age, :politics)
  end
end

