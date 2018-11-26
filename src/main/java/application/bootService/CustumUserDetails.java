package application.bootService;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.StringUtils;

import application.model.Login;
import application.model.LoginRole;
import application.model.Role;



@SuppressWarnings("serial")
public class CustumUserDetails implements UserDetails {

	private Login login;
	
	public CustumUserDetails(Login login) {
		super();
		this.login = login;
	}
	
	@SuppressWarnings("static-access")
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Set<Role> listRole = new HashSet<Role>();
		for (LoginRole loginRole : login.getRoles()) {
			if(loginRole.getRole() == loginRole.getRole().ROLE_ADMIN) {
				listRole.add(loginRole.getRole().ROLE_ADMIN);
			} else {
				listRole.add(loginRole.getRole().ROLE_USER);
			}
		}
		return AuthorityUtils
				.commaSeparatedStringToAuthorityList(StringUtils.collectionToCommaDelimitedString(listRole));
	}

	@Override
	public String getPassword() {
		return login.getMotDePasse();
	}

	@Override
	public String getUsername() {
		return login.getIdentifiant();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return login.isEnable();
	}

}
