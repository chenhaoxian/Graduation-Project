package util;

import java.io.PrintWriter;

public class MakeMySqlScriptTestDataMain {

	public static void main(String[] args) {
		
		try {
			String outputFile = "database/output_test_data.txt";
			
			StringBuffer stringBuffer = new StringBuffer();
			String line = null;		
			int grade = 1;
			int professionNo = 1;
			for(int i = 1000; i <= 10000; i++){
				if(grade > 4){
					grade = 1;
				}
				if (professionNo > 11){
					professionNo = 1;
				}
				line = "insert into student(sname,sno,grade,password,professionno) values('student"+i+"','"+i+"',"+grade+",'123','"+ professionNo + "');";
				grade ++;
				professionNo++;
				
				stringBuffer.append(line+"\n");
			}
			
			PrintWriter printWriter = new PrintWriter(outputFile);
			printWriter.write(stringBuffer.toString().toCharArray());
			printWriter.flush();
			printWriter.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
