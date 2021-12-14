package com.gdu.voyage.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gdu.voyage.vo.Admin;
import com.gdu.voyage.vo.Member;

@Mapper
public interface LoginMapper {
	int selectBanMember(String memberId);
	int selectDeleteMember(String memberId);
	// Member 로그인 정보
	Member login(Member member);
	// Admin 로그인 정보
	Admin adminLogin(String memberId);
}