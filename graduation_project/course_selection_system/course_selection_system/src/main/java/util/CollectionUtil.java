package util;

import java.util.Collection;

public class CollectionUtil {
	
	private CollectionUtil(){}
	
	public static boolean isNotEmptyList(Collection list){
		return list != null && list.size() > 0;
	}

}
