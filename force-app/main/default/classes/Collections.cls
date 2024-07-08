public with sharing class Collections {
    public void collections(String[] param) {
        // Criando a lista
        List<String> myList = new List<String>();

        //adicionando dados na lista, e setando o indice a ser inserido
        myList.add('Adicionar um item na lista');
        myList.add(0, 'Adicionar um item na lista no indice 0');

        // para iterar sob a lista utilizaremos foreach
        for(String itemList : myList){
            System.debug(itemList);
        }
        // verificar se a lista contem algum valor especifico utilizamos o contains, retornara true ou false
        System.debug(myList.contains('Adicionar um item na lista no indice 0'));

        // Verificar se uma lista é vazia utiliza se o isEmpty ou o tamanho da lista com o size
        if(!myList.isEmpty()){
            System.debug('Sua lista nao esta vazia');
            System.debug(myList.size() + ' itens na lista');
        }

        // para remover a partir do indice
        myList.remove(0);

          //Para verificar o que tem na lista usando for 
          for (Integer i=0; i=myList.size(); i++){
            System.debug(myList[i]);
        }    
    } 
    // O Set é utilizado para não permitir dados duplicados em uma coleção.
    public void mySetList() {
        Set<String> mySet = new Set<String>();
        mySet.add('Banana');
        mySet.add('Banana'); // Este valor duplicado não será adicionado ao Set
        mySet.add('Uva');
        mySet.add('Maçã');

        System.debug(mySet);

        for (String fruta : mySet) {
            System.debug(fruta);
        }
    }

    // O map é utilizado para listas chaves e valores
    public void myMap(){
        Map<String, String> myMap = new Map<String, String>();

        // verificação lista vazia
        System.debug(myMap.isEmpty());

        // para adicionar chaves e valores a lista
        myMap.put('Chave', 'Valor');
        myMap.put('Chave2', 'Valor2');
        myMap.put('Chave3', 'Valor3');
        System.debug(myMap);

        // utilizando contains para verificação de valor dentro da lista
        System.debug(myMap.containsKey('Chave'));

        // para retornar mensagem com if
        if(myMap.containsKey('Chave2')){
            System.debug('Ja existe na lista');
        }
        // Para pegar todas as chaves  e valores
        System.debug(myMap.keySet()); //(usado para acessar todos os ids)
        System.debug(myMap.values()); //(usado para ver todos os valores)
    }
}