package com.board.backendboard.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.board.backendboard.entity.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {
}
