# Resolução de desafios técnico Proesc

## Respostas de desafio técnico Proesc

 ### Desafio 1

Conforme a imagem disponibilizada o formulário foi criado e está armazenada na pasta [Desafio 1](./desafio1/resolucao_desafio1)

 ## Desafio 2
Realizadas as consultas conforme solicitado, as queries e suas saídas foram armazenadas na pasta [Desafio 2](./desafio2/resoluca_desafio2)


## Desafio 3.1
Após verificado que havia uma rota e uma view para as páginas indicadas foi verificado então se havia na view da tela inicial
se o endereço estava definido corretamente na tag html de hiperlink, que logo mostrou que não estava de acordo com a rota definida
no Laravel. Dessa forma as seguintes linhas foram alteradas:
                    
<a href="{{ url('/produtos') }}">Produtos</a>
<a href="{{ url('/categorias') }}">Categorias</a>
                                        
alterado para:
                    
<a href="{{ url('/produtos/listar') }}">Produtos</a>
<a href="{{ url('/categorias/listar') }}">Categorias</a>

Desafio 3.2
Erro no método do formulário
<form name="formCard" id="formCard" method="GET" action="{{url('categorias/listar')}}">

Alterado para 
<form name="formCard" id="formCard" method="POST" action="{{url('categorias/listar')}}">

Desafio 3.2
criação de relacionamento entre os modelos

    public function category(){
        return $this->belongsTo(Category::class,
            'category_id',
            'id',
            'id');
    }
    
    Alterar view de Produtos pra exibir o retorno da função de relacionamento
    
    <td scope="row">
                            {{$produto->category->name}}

