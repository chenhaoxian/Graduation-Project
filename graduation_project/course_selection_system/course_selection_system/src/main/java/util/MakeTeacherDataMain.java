package util;

import java.io.PrintWriter;

public class MakeTeacherDataMain {

	public static void main(String[] args) {
		try {
			String outputFile = "database/output_teacher_data.txt";
			
			StringBuffer stringBuffer = new StringBuffer();
			String line = null;
			String[] teacherNames = {"�±���","����Ӣ","������","������","��ά��","��־ϼ","����ӱ","������","��ӭ÷","������","������","������","������","������","������","��ͩ��","�·�Ӣ",
					"������","�º�ӱ","����ϼ","�µ���","�±���","�����","������","������","����Ө","����Ө","����ӱ","������","�°�Ӣ","����Ө","����Ө","����Ө","��ĺӨ","����ӱ","�»�Ө","������","������","������","������","��ΰ","��ΰ",
					"����","��ΰ","����","����","�","������ΰ","����Ӣ","�º�","��Ө","����ӱ","������","������","������","��˼ϼ","��Ө��","�´�ӱ","����","�½�ƽ","��ӳƽ","��ϣ�","��ϣ��","����ɽ","���Ǿ�","������","�½���","�����","������","������",
					"��˼��","��˼Զ","�¹���","��˼�","����ȫ","��˼��","�º��","�»���","������","�±��","�±�ѫ","�½�ѫ","������","���Ҿ�","��Τ��","������","���仪","�����","��ľ��","������","����ԣ","������","������","����ΰ","������",
					"��꿼�","������","���ݫ�","������","������","������","���϶�","������","������","����ܿ","���ʆ�","��ӱ��","���Դ�","���_Ө","������","������","�����","����","��־��","������","������","��־��","������","������","������",
					"��ʯ��","���|��","����ϲ","����ά","���ٻ�","������","���ų�"};
			
			int departmentNo =  1;
			
			for(int i=4 ; i<teacherNames.length;i++){
				if(departmentNo >6){
					departmentNo = 1;
				}
				Tool.print(teacherNames[i]);
				line = "insert into teacher(tno,tname,password,departmentno) values('"+i+"','"+teacherNames[i]+"','123','"+departmentNo+"');";
				departmentNo++;
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
