package application.bootService;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import application.model.Login;
import application.repositories.LoginRepository;


@Service
public class CustumUserDetailService implements UserDetailsService {

	@Autowired
	private LoginRepository loginRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<Login> opt = loginRepository.findByIdWithRoles(username);

		if (opt.isPresent()) {
			return new CustumUserDetails(opt.get());

		}else {
			throw new UsernameNotFoundException("utilisateur inconnu");
		}

	}

}
