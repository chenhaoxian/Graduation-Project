package util;

import java.io.PrintWriter;

public class MakeTeacherDataMain {

	public static void main(String[] args) {
		try {
			String outputFile = "database/output_teacher_data.txt";
			
			StringBuffer stringBuffer = new StringBuffer();
			String line = null;
			String[] teacherNames = {"陈宝玲","陈世英","陈雨琳","陈燕晴","陈维红","陈志霞","陈巧颖","陈妍媛","陈迎梅","陈妍郡","陈艳妍","陈妍艳","陈妍飞","陈妍菲","陈妍霏","陈桐文","陈芬英",
					"陈明艳","陈虹颖","陈银霞","陈丹玲","陈碧琴","陈宇芬","陈香蓉","陈银娜","陈湘莹","陈晖莹","陈立颖","陈泓怡","陈爱英","陈虞莹","陈脘莹","陈睦莹","陈暮莹","陈宁颖","陈焕莹","陈韵怡","陈熳琳","陈丽琳","陈艳琼","张伟","王伟",
					"王芳","李伟","李娜","张敏","李静","王静刘伟","王秀英","陈红","王莹","陈兆颖","陈欣瑶","陈玲岳","陈雨嫣","陈思霞","陈莹洛","陈春颖","陈蕊","陈建平","陈映平","陈希聿","陈希昱","陈伊山","陈亚军","陈子阳","陈建新","陈彦奎","陈政光","陈文晓",
					"陈思渝","陈思远","陈国政","陈思妤","陈子全","陈思愉","陈红彩","陈华清","陈政良","陈炳寰","陈炳勋","陈建勋","王卉哲","王幸靖","王韦玟","王瑞念","王珍华","王宜睿","王木茜","王初苓","王政裕","王杰良","王威江","王合伟","王為卿",
					"王昕吉","王礼明","王惠珮","王吟旺","王博鑫","王秉吉","王迪东","王佑依","王重心","王旺芸","王仁啟","王颖妃","王以春","王綺莹","王骏伦","王良夫","王恒鈺","王洋发","王志杰","王琳善","王书治","王志妃","王欢人","王雯琬","王海香",
					"王石旭","王瑋念","王禎喜","王仰维","王荣惠","王夫勇","王昱辰"};
			
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
