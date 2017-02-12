class Contact < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :attachment,   :validate => true
  attribute :nickname,  :captcha  => true

  attachment :content_type => "image/jpeg",
      :body => File.read("an-image.jpg")

  def headers
    {
      :subject => "Contact Form",
      :to => "jacobahed@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
