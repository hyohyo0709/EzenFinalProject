package ezenproject2.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject2.dao.MemberDAO;
import ezenproject2.dto.MemberDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImp implements MemberService{

	
	@Autowired
	private MemberDAO dao;
	
	public MemberServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	
	//회원가입
	@Override
	public int addMember(MemberDTO memDTO) throws Exception {
		// TODO Auto-generated method stub
		
//		if(memDTO.getMember_number().equals(null)) {
//			dao.memNum(memDTO);
//		}
		
		return dao.insertMember(memDTO);
	}
	
	
	
}//end class
