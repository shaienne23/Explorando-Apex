

    let nome = ['Shaienne', 'james', 'leo', 'SHANTAL'];
    let idade = [30, 25, 20];
    let cidade = ['São Paulo', 'Bahia', 'Minas Gerais'];
    
    let nomesJuntos = [nome, idade, cidade];
    
    //forEach
    nomesJuntos.forEach(dados => console.log(dados));
    //RETORNO [["Shaienne", "james", "leo", "SHANTAL"], [30, 25, 20], ["São Paulo", "Bahia", "Minas Gerais"]]

    //Map
    let nomesUpperCase = nomesJuntos.map( array =>
        array.map(dados =>
        typeof dados === 'string' ? dados.toUpperCase() : dados
    ));
    console.log(nomesUpperCase);
    //RETORNO [["SHAIENNE", 30, "SAO PAULO"], [25, 20, "BAHIA"], ["MINAS GERAIS", 30, "SAO PAULO"]]

    //Map Simples
    let idadesDobradas = idade.map(idade => idade * 2);
    console.log(idadesDobradas);
    // RETORNO [60, 50, 40]

    //filter
    let filtroIdade = idade.filter(idade => idade >= 23);
    console.log(filtroIdade);
    //RETORNO [30, 25]


    //contains
    let conter = nome.filter(nome => nome.includes('ha'))
    console.log(conter);
    //RETORNO ['Shaienne']

    /*Filtra nomes que tenham 'ha' em qualquer parte do nome, usando o metodo toLowerCase() 
    para deixar tudo minusculo e includes() para verificar se esta incluso parte da palavra.*/
    let conterS = nome.filter(nome => nome.toLowerCase().includes('sha'));
    console.log(conterS);
     //RETORNO ['Shaienne', 'SHANTAL']

     let filtrosIdade = idade.filter(idade => idade < 25);
     console.log(filtrosIdade);
     //RETORNO [20]

     /*every (Todos devem atender a condição)  ele filtra todos os itens, se todos forem true, 
     ele retorna true, se algum for false, ele retorna false*/
     let todosTrue = idade.every(idade => idade > 25);
     console.log(todosTrue);

     if(todosTrue === true){
        console.log('todos ja podem trabalhar');
     } else {
        console.log('todos ainda nao podem trabalhar');
     }
    //RETORNO false == 'todos ainda nao podem trabalhar'
     
     //some - metodo que retorna true caso pelo menos um atenda a especificação
     let responsavel = idade.some(idade => idade>= 30);
     
     if(responsavel === true){
        console.log(' Existe pelo menos um responsavel no grupo')
     } else {
        console.log('Nenhum responsavel no grupo')
     }
     //RETORNO Existe pelo menos um responsavel no grupo

     // metodo sort usado para ordenar em ordem crescente e decrescente 
     //idade em ordem crescente 
     let idadesOrdenadas = idade.sort((a,b) => a-b);
     console.log(idadesOrdenadas);
     // Retorno  [20, 25, 30]

     // agora ordem decrescente
     let idadesDecrescente = idade.sort((a,b) => b - a );
     console.log(idadesDecrescente);
     // Retorno  [30, 25, 20]

     let adicionar = idadesDecrescente.push(50);
     console.log(idadesDecrescente);
     // Retorno  [30, 25, 20, 50]

     // join junta todos os elementos de uma array em uma string
     let juntandoComJoin = nome.map(nome => nome.toUpperCase()).join(' e ');
     console.log(juntandoComJoin);
     //Retorno SHAIENNE e JAMES e LEO e SHANTAL

     let juntandoArray = nome.concat(idade, cidade);
     console.log(juntandoArray);
     //Retorno [ 'Shaienne', 'james', 'leo', 'SHANTAL', 30, 25, 20, 'São Paulo', 'Bahia', 'Minas Gerais' ]

     // criando função personalizada

     let animais = [
        {nome: 'Travis', idade: 5, tipo: 'gato'},
        {nome: 'James', idade: 3, tipo: 'gato' },
        {nome: 'Jake', idade: 3, tipo: 'gato'},
        {nome: 'Theo', idade: 2, tipo: ' gato'},
        {nome: ' Teddy', idade: 1, tipo: 'cachorro'},
        {nome: 'Juca', idade: 3, tipo: 'cachorro'}
     ];

    //Função personalizada
     function processarAnimais(animais){
        let listaGato = animais.filter(animais => animais.tipo === 'gato');
        console.log(listaGato);

        // o map aceita apenas um  parametro por vez
        let tipoGatoMap = listaGato.map(gato => gato.nome,);
        console.log(tipoGatoMap);
        let tipoGato = tipoGatoMap.forEach(gato => console.log( 'O nome do meu gato é ' + gato))

        //map(): O método map() é usado para transformar cada objeto do array de gatos em uma string com o nome e a idade do gato formatados de forma legível
        letMap = animais.map(gato => {
            // Verifica se a idade é 1 para usar "ano" ou "anos"
            let idadeFormatada = gato.idade === 1 ? 'ano' : 'anos';
            return `O nome do meu gato é ${gato.nome} e tenho ${gato.idade} ${idadeFormatada}.`;
          });
        console.log(letMap);
        letMap.forEach(gato => console.log(gato))

     }

    processarAnimais(animais);


    



    


