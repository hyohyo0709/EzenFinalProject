package ezenproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject.dao.MemberDAO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImp implements MemberService{

	
	@Autowired
	private MemberDAO dao;
}
