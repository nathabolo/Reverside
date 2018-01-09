package com.reverside.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reverside.auth.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
