package com.gdu.voyage.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gdu.voyage.mapper.MemberMapper;
import com.gdu.voyage.vo.Address;
import com.gdu.voyage.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
public class MemberService {
	private MemberMapper memberMapper;
	
	// 회원가입 중복검사
	public String duplMemberCheck(Member member) {
		log.trace("☆service☆"+member.toString());
		int idCheck = memberMapper.selectMemberId(member.getMemberId());
		if(idCheck == 1) {
			return "아이디중복";
		};
		int nicknameCheck = memberMapper.selectMemberNickName(member.getMemberNickname());
		if(nicknameCheck == 1) {
			return "닉네임중복";
		}
		
		return "중복없음";
	}
	
	// 회원 주소 추가
	public void addMemberAddress(Address address) {
		log.trace("☆service☆"+address.toString());
		memberMapper.insertMemberAddress(address);
		return;
	}
	
	// 회원 추가
	public void addMember(Member member) {
		log.trace("☆service☆"+member.toString());
		memberMapper.insertMember(member);
		return;
	}

}
