class PagesController < ApplicationController
  # ---------------------------  home ----------------------------
  def home
  end

  def download_file(file_name)
    # TODO: see if this is really required
    send_file("#{Rails.root}/public/#{file_name}")
  end

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/new
  def new
    @page = Page.new
  end
end
