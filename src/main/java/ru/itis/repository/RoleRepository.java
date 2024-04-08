package ru.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
}
