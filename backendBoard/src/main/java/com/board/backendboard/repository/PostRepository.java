package com.board.backendboard.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.board.backendboard.entity.Post;

public interface PostRepository extends JpaRepository<Post, Long> {
}
