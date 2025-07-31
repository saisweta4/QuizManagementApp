package com.priya.domain;

import lombok.Data;

@Data
public class UserDto {

	private RoleDto roleEntity;
	private String role;
	private String password;
	private String email;
	private Long id;
	private String username;
}
