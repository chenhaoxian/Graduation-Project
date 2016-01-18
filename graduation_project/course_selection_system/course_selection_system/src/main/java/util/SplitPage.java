package util;

public class SplitPage {
	
	final public static String FIRSTPAGE = "first"; 
	final public static String LASTPAGE = "last";
	final public static String NEXTPAGE = "next";
	final public static String PREVIOUSPAGE = "previous";
	
	private int pageRow = 3;// ÿҳ��ʾ��¼��  
  private int totalRow = 0;// �ܵļ�¼���������ݿ������DAO�ṩ  
  private int currentPage = 1;// ��ǰ��ҳ��  
  private int firstPage = 1;// ��ҳλ��  
  private int totalPage = 1;// �ܵ�ҳ����,Ĭ��Ϊһҳ
  
  public int getPageRow() { 
    return pageRow;  
	}  
	
	/**  
	 * ��������ÿҳ��ʾ�ļ�¼��  
	 *   
	 * @param pageRow  
	 *            �µ�ÿҳ��ʾ��¼��  
	 */  
	public void setPageRow(int pageRow) {
		
    if (pageRow == 0) {  
        try {  
            throw new Exception();// ���pageRow������Ϊ��,Ӧ���׳��쳣.  
        } catch (Exception e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  

    this.pageRow = pageRow;// �޸�ÿҳ�ļ�¼��  
    this.totalPage = this.totalRow / this.pageRow  
            + ((this.totalRow % this.pageRow == 0) ? 0 : 1);  
	}  
	
	public int getTotalRow() {  
	    return totalRow;  
	}  
	
	public void setTotalRow(int totalRow) {// ���÷�ҳ������ܼ�¼���Ժ�,��Ӧ�ø���ÿҳ����ʾ��¼��,����õ��ܵ�ҳ����  
	    this.totalRow = totalRow;  
	    this.totalPage = this.totalRow/this.pageRow+((this.totalRow%this.pageRow==0)?0:1);  
	    System.out.println("��ǰҳ"+this.currentPage);  
	
	}  
	
	public int getCurrentPage() {  
	    return currentPage;  
	}  
	
	public void setCurrentPage(int currentPage) {  
	    this.currentPage = currentPage;  
	}  
	
	public int getFirstPage() {  
	    return firstPage;  
	}  
	
	public void setFirstPage(int firstPage) {  
	    this.firstPage = firstPage;  
	}  
	
	public int getTotalPage() {  
	    return totalPage;  
	}  
	//��Ӧ���ṩ����������ҳ����,���Ǽ���õ���   
	
	/**  
	 * ��������ı�ʾ���������¼���Ҫ��ʵ��ҳ��  
	 *   
	 * @param flag  
	 *            ����ת���ҳ���ʾ��  
	 * @return int ������ҳ  
	 */  
	public int toNewPage(String flag) {  
    int newPage = this.currentPage;  
    if (flag != null && !"".equals(flag)) {  
        if (SplitPage.FIRSTPAGE.equals(flag)) {  
            newPage = 1;  
        } else if (SplitPage.LASTPAGE.equals(flag)) {  
            newPage = this.totalPage;  
        } else if (SplitPage.NEXTPAGE.equals(flag)) {  
            newPage = this.currentPage  
                    + ((this.currentPage == this.totalPage) ? 0 : 1);// �����ǰҳ�����ܵ�ҳ��������������+1��  
        } else if (SplitPage.PREVIOUSPAGE.equals(flag)) {  
            newPage = this.currentPage  
                    - ((this.currentPage == this.firstPage) ? 0 : 1);// �����ǰҳ������ҳ���������ǰ��-1��  
        } else {  
            // ������Ǹ������ַ�������  
            newPage = Integer.parseInt(flag.trim());  
        }  
    } else {// ����Ĳ���Ϊ�գ���ǰҳ�벻��  
        newPage = this.currentPage;  
    }  
    this.setCurrentPage(newPage);// �ǵ��������õ���ҳ��  
    return newPage;  
	}  

}
