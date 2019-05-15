package com.fileuploader.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fileuploader.entity.Album;

@Repository
public interface AlbumRepository extends JpaRepository<Album, Long> {

}
