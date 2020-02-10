package ryatsyna.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ryatsyna.security.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

}
