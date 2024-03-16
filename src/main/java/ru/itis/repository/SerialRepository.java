package ru.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.itis.entity.Serial;

import java.util.List;

public interface SerialRepository extends JpaRepository<Serial, Long> {

    @Query("select s from Serial s")
    List<Serial> findAllSerials();
}
