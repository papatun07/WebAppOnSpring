package ru.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.itis.entity.Role;

import java.util.List;

public interface RoleRepository extends JpaRepository<Role, Long> {
}
