# Resolução de desafios técnico Proesc

## Respostas de desafio técnico Proesc

 ### Desafio 1

Conforme a imagem disponibilizada o formulário foi criado e está armazenada na pasta [Desafio 1](./desafio1/resolucao_desafio1)

 ## Desafio 2
Realizadas as consultas conforme solicitado, as queries e suas saídas foram armazenadas na pasta [Desafio 2](./desafio2/resoluca_desafio2)


## Desafio 3.1
Após verificado que haviam rotas e uma views criadas para as páginas indicadas, posteriormente foi verificado então se na view da tela inicial
o endereço estava definido corretamente na tag html de hiperlink, que logo apontou problema já que o link não estava de acordo com a rota definida
no Laravel. Dessa forma as seguintes linhas foram alteradas:


```bash
<a href="{{ url('/produtos') }}">Produtos</a>
<a href="{{ url('/categorias') }}">Categorias</a>
```
 
alterado para:

```bash
<a href="{{ url('/produtos/listar') }}">Produtos</a>
<a href="{{ url('/categorias/listar') }}">Categorias</a>
```

Desafio 3.2
Neste desafio foi notado que havia um erro no método no formulário que realizava a inserção dos dados no banco de dados, este método foi então alterado de modo a utilizar o método correto para esta aplicação. 

```bash
<form name="formCard" id="formCard" method="GET" action="{{url('categorias/listar')}}">
```


Alterado para: 

```bash
<form name="formCard" id="formCard" method="POST" action="{{url('categorias/listar')}}">
```


Desafio 3.3
Para este desafio foi notado que não havia nenhum tipo de relacionamento entre as Models da aplicação e dessa forma não era possível realizar a consulta correta do dado necessário para retornar o dado correto. Dessa forma foi realizado a criação do relacionamento utilizando o Eloquente ORM com uma função que retornava a consulta correta.

```bash

    public function category(){
        return $this->belongsTo(Category::class,
            'category_id',
            'id',
            'id');
    }
    
```
Foi necessário ainda alterar a view de Produtos pra exibir o retorno da função de relacionamento.

```bash    
    
    <td scope="row">
        {{$produto->category->name}}

```
