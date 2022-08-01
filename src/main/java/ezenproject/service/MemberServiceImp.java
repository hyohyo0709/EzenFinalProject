package ezenproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject.dao.MemberDAO;
import ezenproject.dto.MemberDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImp implements MemberService{

	
	
	@Autowired
	private MemberDAO dao;
	
	public MemberServiceImp() {
	
	}

	@Override
	public MemberDTO memberInformation(int num) throws Exception {
		return dao.selectMemberInformation(num);
	}

	@Override
	public void updateInformation(MemberDTO dto) throws Exception {
		dao.updateMemberInformation(dto);
	}
	
	@Override
	public void deleteMemberInformation(int num) throws Exception {
		dao.deleteMemberInformation(num);
		
	}
}
