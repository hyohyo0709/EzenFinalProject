package ezenproject2.dao;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import ezenproject2.dto.MemberDTO;

@Mapper
@Repository
public interface MemberDAO {
	public int insertMember (MemberDTO dto) throws DataAccessException;
	public void update(MemberDTO dto);
	//public int memNum(MemberDTO dto);

}
