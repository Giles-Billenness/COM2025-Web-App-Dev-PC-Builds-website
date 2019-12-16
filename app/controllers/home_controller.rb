class HomeController < ApplicationController
  def home
  end

  #adding contact method for contact pages
  def contact
  end

  # sets perams of the email to the fields for the contact page
  def request_contact
    name=params[:name]
    email=params[:email]
    telephone=params[:telephone]
    message=params[:message]

    if email.blank? #make sure email field is populated
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      #send an email
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    #re display the root path- no view needed
    redirect_to root_path
  end
end
