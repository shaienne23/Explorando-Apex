public with sharing class DmlClass {
    public DmlClass() {
        // DML Inserir registro
        Account acc = new Account();
        acc.Name = 'Aula Dml';
        insert acc;

        // DML Alterar registro
        Account accUpdate = [SELECT Id, Name FROM Account WHERE Name = 'Aula Dml'];
        accUpdate.Type = 'aula alterada DML ';
        update accUpdate;

        // DML Deletar registro
        Account accDelete = [SELECT Id, Name FROM Account WHERE Name = 'Aula Dml'];
        delete accDelete;

        // DML Upsert - inserir 
        Account accUpsert = new Account();
        accUpsert.Name = 'UPSERT';
        upsert accUpsert;
        
        // DML Upsert - alterar
        Account accUpsert = [SELECT Id, Name FROM Account WHERE Name = 'UPSERT'];
        accUpsert.Type = 'aula upsert';
        upsert accUpsert;

      // query para teste  [SELECT Id, Name, Type FROM Account WHERE Name = 'Aula Dml']

        // Criação de uma conta para upsert
        Account accUpsert = new Account();
        accUpsert.Name = 'UPSERT';

        // Savepoint: usado para salvar o estado atual do banco de dados
        Savepoint savePoint = Database.setSavepoint();

        // Usamos try-catch para tentar inserir a conta
        try {
            upsert accUpsert;
        } catch (Exception e) {
            // Captura o erro e exibe uma mensagem de debug
            System.debug('Erro ao inserir conta: ' + e.getMessage());
            // Rollback: retorna ao ponto do savepoint em caso de erro
            Database.rollback(savePoint);
        }
        
        // DML para atualizar conta
        update accUpsert;

        // DML para deletar conta
        delete accUpsert;
        
        }
}