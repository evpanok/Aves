package ua.avescard;

public interface UserService {
    User getUserByLogin(String login);
    boolean existsByLogin(String login);
    void addUser(User user);
}
