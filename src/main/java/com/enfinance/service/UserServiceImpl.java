package com.enfinance.service;

import java.util.Collections;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.enfinance.entity.Roles;
import com.enfinance.entity.User;
import com.enfinance.repository.RoleRepository;
import com.enfinance.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private RoleRepository roleRepository;
    
    @Autowired
    private HttpSession session;

    @Override
	public void registerNewClient(String fname, String lname, String email, String contactNumber, String password) {
		if (emailExists(email)) {
            throw new RuntimeException("Email already exists");
        }

        // Encode the password
        String encodedPassword = passwordEncoder.encode(password);

        // Create new user
        User User = new User();
        User.setFname(fname);
        User.setLname(lname);
        User.setEmail(email);
        User.setContactNumber(contactNumber); 
        User.setPassword(encodedPassword);
        
        Roles userRole = roleRepository.findByRoleName("User");
        if (userRole == null) {
            throw new RuntimeException("Role 'User' not found. Please make sure it exists in the database.");
        } else {
            User.setRoles(Collections.singleton(userRole));
            session.setAttribute("userEmail", email);
            session.setAttribute("name", User.getFname());
            // Save user to the database
            userRepository.save(User);
        }
	}

	@Override
	public boolean emailExists(String email) {
		 User User = userRepository.findByEmail(email);
	        return User != null; 
	}

	@Override
	public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
		
	}
	
    public User getUserById(Long id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("User not found"));
    }
    
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

}
