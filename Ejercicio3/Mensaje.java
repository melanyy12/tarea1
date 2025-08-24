import javax.swing.JOptionPane;

public class Mensaje {

    public static void main(String[] args) {
        // Verificamos si se pidió entrada con "input"
        if (args.length > 0 && args[0].equals("input")) {
            String message = args[1]; // mensaje que se muestra en el cuadro de entrada
            String input = JOptionPane.showInputDialog(null, message);

            // Se imprime la entrada para que Elixir pueda capturarla
            System.out.println(input);
        }
        // Si solo hay un argumento, se muestra como mensaje
        else if (args.length > 0) {
            JOptionPane.showMessageDialog(null, args[0]);
        }
        // Si no se pasó nada
        else {
            JOptionPane.showMessageDialog(null, "No message provided.");
        }
    }
}
