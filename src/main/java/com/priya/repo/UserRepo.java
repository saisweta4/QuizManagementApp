package com.priya.repo;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.priya.domain.Role;
import com.priya.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {

    @Query("select u.roleEntity from User u where u.email=:email AND u.password=:password")
    public Role findRoleByEmail(@Param("email") String email, @Param("password") String password);

    @Query("select u from User u where u.roleEntity.roleId=:id")
    public List<User> getAllStudentByRoleId(@Param("id") Long id);

    // This commented-out query is now also corrected to use camelCase
    // @Query("select u from User u where u.roleEntity.roleId=2")
    // public List<User> getAllFaculty();

    @Query("select u from User u where u.roleEntity=:entity")
    public List<User> getAllRoleByObject(@Param("entity") Role role);

    @Query("SELECT COUNT(u) FROM User u WHERE u.roleEntity.roleId = :roleId")
    public Integer countUser(@Param("roleId") Long roleId); // Changed Integer to Long to match the ID type

    @Query("select password from User u WHERE u.email=:email")
    public String findPass(@Param("email") String email);

}