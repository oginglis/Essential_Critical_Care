class NavbarBaseFoldersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_navbar_base_folder, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show

  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy
  end

  private

  def set_navbar_base_folder
    @navbar_base_folder = NavbarBaseFolder.includes(:categories, :translations).find(params[:id])
  end
end
