json.extract! reserva, :id, :nome, :celular, :wpp, :telefone, :email, :quantidade, :chekin, :checkout, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
