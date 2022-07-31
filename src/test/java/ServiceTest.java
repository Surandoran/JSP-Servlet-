import com.example.cosviewmain.dto.MemberDTO;
import com.example.cosviewmain.service.MemberService;
import org.junit.Test;

public class ServiceTest {

	@Test
	public void Test1() {
		MemberDTO dto = new MemberDTO();
		dto.setName("test");
		dto.setId("test");
		dto.setPwd("1234");
		dto.setNickname("test");
		dto.setSex("M");
		dto.setEmail("admin@admin.com");
		dto.setZipcode("555");
		dto.setAddr1("test");
		dto.setAddr2("test");

		MemberService service = MemberService.getInstance();
		service.MemberInsert(dto); //관리자 계정 등록

		service.MemberInsert(dto);

	}
}
	

	
	


