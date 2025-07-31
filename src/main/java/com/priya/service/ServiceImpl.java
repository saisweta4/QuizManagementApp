package com.priya.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.priya.domain.Role;
import com.priya.domain.RoleDto;
import com.priya.domain.User;
import com.priya.domain.UserDto;
import com.priya.repo.QuestionRepo;
import com.priya.repo.RoleRepo;
import com.priya.repo.TechnoRepo;
import com.priya.repo.UserRepo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Service
public class ServiceImpl implements ServiceIntf{

	
	@Autowired
	private UserRepo userRepo;
	
	
	@Autowired
	private RoleRepo roleRepo;
	
	@Autowired
	private QuestionRepo qns;
	
	@Autowired
	private TechnoRepo TechRepo;
	
	
	public String addUser(UserDto userDto) {
		//Role rolEntity = roleRepo.findById(1L).get();

		User dto=new User();
		System.out.println(userDto.getRole()+"Add user in admin....................");
		//here i am catching role object by ()
		Role role=roleRepo.findByName(userDto.getRole());
		System.out.println(role);
		BeanUtils.copyProperties(userDto, dto);
		
		dto.setRoleEntity(role);
		User user=userRepo.save(dto);
		
		
		
		if(user.getId()!=null)
		{
			return "Regester successful";
		}
		else
		{
			return "Unable to Regester";
		}
	}
	
	
	
	public String saveData(UserDto userDto) {
		
		
		User dto=new User();
		
		Role roleEntity = roleRepo.findById(1L).get();
		//here i am catching role object by ()
		
		System.out.println(roleEntity);
		BeanUtils.copyProperties(userDto, dto);
		
		dto.setRoleEntity(roleEntity);
		User user=userRepo.save(dto);
		
		
	
		
		if(user.getId()!=null)
		{
			return "Regester successful";
		}
		else
		{
			return "Unable to Regester";
		}
	}
	
	
	
	public String checkLoginService(UserDto dto,HttpServletRequest request)
	{

		List<User> allUser = userRepo.findAll();
		String redirect="LoginPage";
		
		for(User user:allUser) {
			if(dto.getEmail().equals(user.getEmail()) && dto.getPassword().equals(user.getPassword())) {
				String roleName=null;
				
				
				//Getting
				HttpSession session = request.getSession();
				
				Role role=userRepo.findRoleByEmail(dto.getEmail(),dto.getPassword());
				System.out.println(dto.getEmail()+" "+dto.getPassword()+"service layer....");
				System.out.println(role.getName());
				if(role!=null)
				{
					roleName=role.getName();
				}
				if(roleName.equalsIgnoreCase("student"))
				{
					session.setAttribute("role","Student");
					redirect="redirect:Student";
				}
				
				if(roleName.equalsIgnoreCase("faculty"))
				{
					session.setAttribute("role","Faculty");
					redirect="redirect:Faculty";
				}
				
				if(roleName.equalsIgnoreCase("admin"))
				{
					session.setAttribute("role","Admin");
					redirect="redirect:Admin";
				}
				return redirect;
				
			}
		}
	return redirect;
		
	}
	
	public List<UserDto> showAllStudentData(String roleName)
	{
		Role roleObject=roleRepo.findByName(roleName);
		
		List<User> studentList=userRepo.getAllRoleByObject(roleObject);
		//System.out.println(studentList);
		List<UserDto> studentDtoList=new ArrayList<>();
		
		
		for(User user:studentList)
		{
			UserDto userDto=new UserDto();
			BeanUtils.copyProperties(user, userDto);
			roleObject=user.getRoleEntity();
			
			RoleDto roleDto=new RoleDto();
			
			BeanUtils.copyProperties(roleObject, roleDto);
			
			userDto.setRoleEntity(roleDto);
			studentDtoList.add(userDto);
		}
		
		
		System.out.println(studentDtoList);
		return studentDtoList;
		
	}
	
	public String removeOneData(Long id)
	{
		User user=userRepo.findById(id).get();
		Role role=user.getRoleEntity();
		String name=role.getName();
		//System.out.println(name+".............."+user+""+role);
		userRepo.deleteById(id);
		
		return name;
	}
	
	public UserDto editData(Long id,String name)
	{
		/*
		 * User user=new User(); BeanUtils.copyProperties(userDto, user);
		 */
		
		User oneUser=userRepo.findById(id).get();
		//System.out.println(name+" in service layer..........."+oneUser.getRole_Entity().getRole_id());
		
		Role role=roleRepo.findByName(name);
		//System.out.println(role.getName()+""+role.getRole_id());
		UserDto userDto=new UserDto();
		
		RoleDto roleD=new RoleDto();
		roleD.setName(role.getName());
		roleD.setRoleId(role.getRoleId());
		
		userDto.setRoleEntity(roleD);
		
		BeanUtils.copyProperties(oneUser, userDto);
		return userDto;
	}
	
	public void updateData(UserDto userDto)
	{
		User user=new User();
		BeanUtils.copyProperties(userDto, user);
		
		Role role=roleRepo.findByName(userDto.getRole());
		user.setRoleEntity(role);
		
		
		//User oneUser=userRepo.findById(user.getId()).get();
		userRepo.save(user);
		
		//return ""; ALL SET 
		
	}
	
	public Integer countStudent()
	{
		// FIX: Pass '1L' instead of '1' to match the expected Long type.
		Integer countStd=userRepo.countUser(1L);
		
		return countStd;
	}
	
	public Integer countFaculty()
	{
		// FIX: Pass '2L' instead of '2' to match the expected Long type.
		Integer countStaff=userRepo.countUser(2L);
		
		return countStaff;
	}
	
	public Integer countQuestions()
	{
		Integer count=qns.countQuestion();
		return count;
	}
	
	/*
	public Integer countTech()
	{
		Integer tech=TechRepo.countTech();
		return tech;
	}
	*/

	public String getPass(String mail) {
		
		String pass = userRepo.findPass(mail);
		System.out.println(pass);
		return pass;
	}
	
	
}