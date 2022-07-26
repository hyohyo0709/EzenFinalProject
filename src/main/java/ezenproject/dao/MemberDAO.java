package ezenproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import ezenproject.dto.MemberDTO;



@Mapper
@Repository
public interface MemberDAO {

	public List<MemberDTO> list();
	public void statusChangeOn(int num);
	public void statusChangeOff(int num);
	public MemberDTO selectOne(int num);
	public void typeChangeOn(int num);
	public void typeChangeOff(int num);
	public void deleteData(int num);
	
}
