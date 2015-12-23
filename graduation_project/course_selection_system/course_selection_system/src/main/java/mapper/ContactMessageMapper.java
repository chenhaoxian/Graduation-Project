package mapper;

import org.apache.ibatis.annotations.Param;

public interface ContactMessageMapper {
	void saveContactMessage(@Param("name")String name, @Param("email")String email, @Param("message")String message);
	int checkContactMessage(String email);

}
