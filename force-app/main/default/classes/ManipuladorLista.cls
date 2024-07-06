public class ManipuladorLista {
	// Definir metodos em lista.
    public static List<Integer> adicionarElementos(List<Integer> lista, Integer Elemento){
        lista.add(elemento);
        return lista;
    }
    public static List<Integer>filtrarLista(List<Integer> lista, integer valor){
        List<integer> novaLista = new list<integer>();
        
        for(Integer num : lista){
            if(num > valor){
                novaLista.add(num);
            }
        }
        return novaLista;
    }
}