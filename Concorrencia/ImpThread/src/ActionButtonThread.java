import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;


import javax.swing.JLabel;
import javax.swing.JTextField;

public class ActionButtonThread implements ActionListener {

	private JTextField primeiro;
	private JTextField segundo;
	private JLabel resultado;
	
	

	public ActionButtonThread(JTextField primeiro, JTextField segundo, JLabel resultado) {
		this.primeiro = primeiro;
		this.segundo = segundo;
		this.resultado = resultado;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		
		Runnable tarefa = new MultiplicadorThread(primeiro, segundo, resultado);
		Thread calcularThread = new Thread(tarefa);
		
		//Thread é inicializada
		calcularThread.start();
		
	}

}
