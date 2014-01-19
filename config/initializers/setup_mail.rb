ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "https://tweetin.herokuapp.com",
  :user_name            => "nitanshu1991@gmail.com",
  :password             => "nit@nshu",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

