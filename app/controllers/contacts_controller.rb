class ContactsController < ApplicationController
  before_action :set_contact, :only => [:show, :edit, :update, :destroy]

  # -------------------------------------- index -----------------------
  
  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # -------------------------------------- show -----------------------------

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # ----------------------------------- new ----------------------------------

  # GET /contacts/new
  def new
    @contact = Contact.new
  end   
  
  # ---------------------------------- Edit------------------------------------
  # GET /contacts/1/edit
  def edit
  end

  #----------------------------------- Create --------------------------------

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    
   #    $contact_name = params[:name]
  
   $contact_name = @contact.name
   $contact_phone = @contact.phone
   $contact_email = @contact.email
   $contact_comment = @contact.comment
    
    
    respond_to do |format|
      if @contact.save
        # MAILER - the line below sends data from the help request form through the email.
        ContactMailer.send_contact().deliver_now
        format.html { redirect_to '/home', :notice => 'Contact was successfully created.' }
        format.json { render :show, :status => :created, :location => '/home' }
      else
        format.html { render :new }
        format.json { render :json => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, :notice => 'Contact was successfully updated.' }
        format.json { render :show, :status => :ok, :location => @contact }
      else
        format.html { render :edit }
        format.json { render :json => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, :notice => 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :comment)
    end
end
