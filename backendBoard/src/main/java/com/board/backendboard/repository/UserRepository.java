package com.board.backendboard.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.board.backendboard.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
