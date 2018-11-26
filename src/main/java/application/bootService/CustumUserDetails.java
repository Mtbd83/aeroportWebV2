package application.bootService;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.StringUtils;

import application.model.Login;



@SuppressWarnings("serial")
public class CustumUserDetails implements UserDetails {

	private Login login;
	
	public CustumUserDetails(Login login) {
		super();
		this.login = login;
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return AuthorityUtils
				.commaSeparatedStringToAuthorityList(StringUtils.collectionToCommaDelimitedString(login.getRoles()));
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
