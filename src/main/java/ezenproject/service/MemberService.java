package ezenproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ezenproject.dto.MemberDTO;



public interface MemberService {
	//회원정보 검색
	public MemberDTO memberInformation(int num) throws Exception;
	//회원정보 수정
	public void updateInformation(MemberDTO dto) throws Exception;
	//회원 탈퇴
	public void deleteMemberInformation(int num) throws Exception;
}
