class UserMailer < ApplicationMailer
  include Resque::Mailer
  def mensagem_de_confirmacao(user)
    @user = user
    @url = 'http://www.hotelpousadajuliano.com.br'
    mail(to: @user.email, subject: 'Reserva recebida - Hotel Pousada Juliano')
    mail(to: 'reservas@hotelpousadajuliano.com.br', subject: 'Reserva recebida - Hotel Pousada Juliano')
  end
  def notificacao(user)
    @user = user
    @url = 'http://www.hotelpousadajuliano.com.br'
    mail(to: 'reservas@hotelpousadajuliano.com.br', subject: 'Reserva recebida - Hotel Pousada Juliano')
  end
  def notificacao1(user)
    @user = user
    @url = 'http://www.hotelpousadajuliano.com.br'
    mail(to: 'hiquercc@gmail.com', subject: 'Reserva recebida - Hotel Pousada Juliano')
  end
  def notificacao2(user)
    @user = user
    @url = 'http://www.hotelpousadajuliano.com.br'
    mail(to: 'juliano@hotelpousadajuliano.com.br', subject: 'Reserva recebida - Hotel Pousada Juliano')
  end
  def notificacao3(user)
    @user = user
    @url = 'http://www.hotelpousadajuliano.com.br'
    mail(to: 'hpousadajuliano@gmail.com', subject: 'Reserva recebida - Hotel Pousada Juliano')
  end
  def notificacao4(user)
    @user = user
    @url = 'http://www.hotelpousadajuliano.com.br'
    mail(to: @user.email, subject: 'Reserva Cadastrada - Hotel Pousada Juliano')
  end
end
