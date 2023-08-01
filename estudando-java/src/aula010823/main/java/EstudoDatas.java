import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class EstudoDatas {

    public static void main(String[] args) {
        LocalDate hoje = LocalDate.now(); // data e hoje
        System.out.println(hoje);

        LocalTime agora = LocalTime.now(); // a hora nesse exato momento
        System.out.println(agora);

        LocalDateTime dataHoraAtual = LocalDateTime.now(); // a data de hoje e a hora nesse exato momento
        System.out.println(dataHoraAtual);
        System.out.println("Ano " + dataHoraAtual.getYear()); // traz somente o ano
        System.out.println("Mês " + dataHoraAtual.getMonthValue()); // traz somente o mês
        System.out.println("Dia " + dataHoraAtual.getDayOfMonth()); // traz somente o dia
        System.out.println(dataHoraAtual.getDayOfWeek()); // traz o dia da semana que é hoje

        DateTimeFormatter formatoBr = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss"); // Cria o formato da data para o padrão do Brasil
        DateTimeFormatter formatoBr2 = DateTimeFormatter.ofPattern("EEEE, MMMM, yyyy"); // Cria o formato dia da semana, mês e ano.
        String dataHoraAtualFormatada = dataHoraAtual.format(formatoBr); // traz a a data e hora formatada no padrão do Brasil
        String dataHoraAtualFormatada2 = dataHoraAtual.format(formatoBr2);
        System.out.println("Data formatada " + dataHoraAtualFormatada);
        System.out.println("Data formatada " + dataHoraAtualFormatada2);

        int ano = 2023;
        int mes = 12;
        int dia = 7;
        LocalDate dataValida = LocalDate.of(ano, mes, dia); // para deixar uma data definida
        System.out.println(dataValida);

        LocalDate hoje1 = LocalDate.now(); // hoje
        LocalDate data = LocalDate.of(2023, 8, 2); // amanhã
        if(hoje1.isAfter(data)) { // verifica se a data já passou
            System.out.println("A data " + data + " já passou!");
        } else {
            System.out.println("A data " + data + "  ainda não passou!");
        }

        hoje.isAfter(data); // verifica se hoje já passou da data
        hoje.isBefore(data); // verifica se hoje ainda não passou da data
    }
}
