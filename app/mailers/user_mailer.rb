class UserMailer < ApplicationMailer
  default from: 'julien.tamil@gmail.com'

  def welcome_email(user)
    # on récupère l'instance user pous ensuite pouvor la passer à la view
    @user = user

    # on définit une url
    @url = "https://eventbrite-training-ja.herokuapp.com/"

    # C'est cet appel à la méthode #mail qui permet d'envoyer le mail
    mail(to: @user.email, subject: "Bienvenue chez nous !")

  end
end
