describe 'fazer uma requisição' do#descrevendo que será feita uma requisiçãp
    it 'get', test_get: true do # informando qual método será utilizado, neste caso o get (test_get: true -> é uma tag)
        @list = Contato.get('/VRPAT/')#realizando a alteração o dados, informando seu respectivo ID        
        puts @list.code #imprimindo status code em tela
        expect(@list.code).to eq 200 #validando se o retorno do status code é 200
        expect(@list.parsed_response['typeOfEstablishment'].first['name']).to eq 'PIZZARIA' #validando se a variavel setada é a informada
        puts @list.body['PIZZARIA'] #exibindo todo o corpo da requisição, que traz um arrey de vários objetos.
    end
end