public with sharing class TiposDeDados {
    public TiposDeDados() {
        // Dentro do Apex não a distinção entre maiusculas e minusculas, mas aconselho seguir as convenções. 
        // Primeiro tipo String - usada para textos
        String euSouUmaString = 'eu sou uma Strin';
        System.debug(euSouUmaString);

        //Boolean são variaveis que retornam verdadeiro ou falso, utilizada para verificações importantes.
        Boolean verdadeiroOuFalso = true;
        System.debug(verdadeiroOuFalso);

        // Integer para valores sem casas decimais e de ate 32 bits, pode ser positivo ou negativo. 
        Integer inteiro = -1; // de -2147483648 ate 2147483467
        System.debug(inteiro);

        // Long para numeros inteiros longos, possui 64 bits de armazenamento enquanto integer tem apenas 32 bits
        Long longo = 1545454545; //de -2^63 ate (2^63)-1
        System.debug(longo);

        //Decimal tem o ponto flutuante, casas decimais com limitação de armazenamento do tipo Long
        Decimal pontoFlutuante = 1.63; //de -2^63 ate (2^63)-1
        System.debug(pontoFlutuante);

        // parecido com decimal, com diferenças Double em Apex oferece aproximadamente 15 dígitos de 
        //precisão e é ideal para cálculos científicos com menor necessidade de precisão. Decimal oferece
        //até 28 dígitos de precisão, sendo ideal para cálculos financeiros e situações que exigem alta precisão.
        Double pontoFlutuante2 = 1.999999999;
        System.debug(pontoFlutuante2);

        //Blob - tipo binario utilizado para guardar arquivos. Para criar instancia de um blob é necessario utilizar valueOf.
        //Para vizualizar o texto dentro do Blob, é necessario utilizar toString
        Blob b = Blob.valueOf('Eu sou Blob');
        System.debug(b.toString());

        // Object pode ser qualquer tipo de dado em salesforce, quando voce nao sabe o tipo de dado retornado,
        //se utiliza Object, pode se adicionar qualquer variavel dentro dela
         Object obj = 'Sou uma String';
         System.debug(obj);

        // é possivel verificar tambem o tipo de object utilizando o instanceOf para verificação do tipo
        Boolean souUmaString = obj instanceOf String;
        System.debug(souUmaString);

        // Utilizamos tambem o tipo Date
        Date d = Date.today();
        System.debug(d);
        // Posso adicionar dias a data baseada a data de hoje, É possivel tambem adicionar anos e meses.
        d = d.addDays(7);
        // ou retirar dias 
        Date d2 = Date.today().addDays(-45);
        // verificar diferença de dias entre datas
        System.debug(d2.daysBetween(d));
        //imprimir a data formatada
        System.debug(d.format());
        //Datetime tem tambem o hora no lugar de today utilizamos o now
        Datetime dt = Datetime.now();
        System.debug(dt);
        // Pegar apenas a hora
        Time dtHour = dt.time();
        System.debug(dtHour);
        // Pegar apenas a data
        Date dtDate = dt.date();
        System.debug(dtDate);

        // Time para passar horas especificas
        Time horas = Time.newInstance(18, 30, 2, 20);
        System.debug(horas);

        // tipo enum, utilizado para escolher entre opções, nao é necessario ponto e virgula no final pois se assemelha
        // a classes
        
        // Tipo enum, utilizado para escolher entre opções
        enum Season { WINTER, SPRING, SUMMER, FALL }
        Season mySeason = Season.WINTER;
        System.debug(mySeason);

        // Para acessar o valor de cada enum
        System.debug(Season.WINTER.name());
        System.debug(Season.WINTER.ordinal());

        // Ou realizar comparativos
        System.debug(mySeason == Season.WINTER);
        System.debug(mySeason != Season.WINTER);

        // Ou adicionar um for para percorrer a lista de enums
        for (Season s : Season.values()) {
            System.debug(s);
        }

        System.debug(mySeason);

        // Tipo de dados ID, tenho quando faço uso de dados do salesforce.
        Account acc = new Account();
        acc.Name = 'teste';
        insert acc;

        Id aId = a.Id;
        System.debug(aId);

    }
}