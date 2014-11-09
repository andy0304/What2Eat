class What2eatHomepagesController < ApplicationController
  # GET /what2eat_homepages
  # GET /what2eat_homepages.json
  def index
    @what2eat_homepages = What2eatHomepage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @what2eat_homepages }
    end
  end

  # GET /what2eat_homepages/1
  # GET /what2eat_homepages/1.json
  def show
    @what2eat_homepage = What2eatHomepage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @what2eat_homepage }
    end
  end

  # GET /what2eat_homepages/new
  # GET /what2eat_homepages/new.json
  def new
    @what2eat_homepage = What2eatHomepage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @what2eat_homepage }
    end
  end

  # GET /what2eat_homepages/1/edit
  def edit
    @what2eat_homepage = What2eatHomepage.find(params[:id])
  end

  # POST /what2eat_homepages
  # POST /what2eat_homepages.json
  def create
    @what2eat_homepage = What2eatHomepage.new(params[:what2eat_homepage])

    respond_to do |format|
      if @what2eat_homepage.save
        format.html { redirect_to @what2eat_homepage, notice: 'What2eat homepage was successfully created.' }
        format.json { render json: @what2eat_homepage, status: :created, location: @what2eat_homepage }
      else
        format.html { render action: "new" }
        format.json { render json: @what2eat_homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /what2eat_homepages/1
  # PUT /what2eat_homepages/1.json
  def update
    @what2eat_homepage = What2eatHomepage.find(params[:id])

    respond_to do |format|
      if @what2eat_homepage.update_attributes(params[:what2eat_homepage])
        format.html { redirect_to @what2eat_homepage, notice: 'What2eat homepage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @what2eat_homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /what2eat_homepages/1
  # DELETE /what2eat_homepages/1.json
  def destroy
    @what2eat_homepage = What2eatHomepage.find(params[:id])
    @what2eat_homepage.destroy

    respond_to do |format|
      format.html { redirect_to what2eat_homepages_url }
      format.json { head :no_content }
    end
  end
end
