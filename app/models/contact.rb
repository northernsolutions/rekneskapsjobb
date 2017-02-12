class Contact < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attributes :screenshot, :attachment => true,
  attribute :nickname,  :captcha  => true


  def headers
    {
      :subject => "Contact Form",
      :to => "jacobahed@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
