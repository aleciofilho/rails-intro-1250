class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = %w[alecio dudu vitonesss]
    if params[:member].present?
      @members = @members.select { |member| member.include?(params[:member].downcase) }
    end
  end
end
