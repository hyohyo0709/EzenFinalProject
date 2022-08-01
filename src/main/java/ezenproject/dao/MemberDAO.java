package ezenproject.dao;



import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import ezenproject.dto.MemberDTO;


@Mapper
@Repository
public interface MemberDAO {
	public MemberDTO selectMemberInformation(int num) throws DataAccessException;
	public void updateMemberInformation(MemberDTO dto) throws DataAccessException;
	public void deleteMemberInformation(int num) throws DataAccessException;
}
