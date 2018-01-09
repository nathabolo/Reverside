package com.reverside.auth.service;

import com.reverside.auth.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username, String email);
}
