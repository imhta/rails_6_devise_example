class UserMailer < Devise::Mailer
    helper :application 
    include Devise::Controllers::UrlHelpers 
    default template_path: 'users/mailer'
end