module Contato
    include HTTParty
    #url base de contato
    default_options.update(verify: false)
    base_uri CONFIG['url_padrao']
    #opcoes do services
    format :json
    headers 'Content-Type': 'application/json',
            'Accept-Encoding': 'gzip'          
end

# toda vez que eu chamar o modulo a url padrão será: 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT/',
# onde ele terá o header com a opção: 'Content_Type': 'aplication/jason' e 'Accept-Encoding': 'gzip'
# e seu formato será  json