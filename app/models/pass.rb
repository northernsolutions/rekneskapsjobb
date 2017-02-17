class Pass < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nickname,  :captcha  => true

  def headers
    {
        :subject => "Test",
        :to => "frank.northernsolutions@gmail.com",
        :from => %("#{name}" <#{email}>)
      }
  end
end
