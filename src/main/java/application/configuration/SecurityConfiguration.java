package application.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import application.bootService.CustumUserDetailService;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

		@Autowired
		private CustumUserDetailService custumUserDetailService;
	
		protected void configure(HttpSecurity http) throws Exception {
			http.authorizeRequests().antMatchers("/home").permitAll();
			http.authorizeRequests().antMatchers("/account/**").authenticated().and().formLogin().loginPage("/login")
					.failureUrl("/login?error=erreur").permitAll().and().logout().permitAll().logoutSuccessUrl("/home");
			http.csrf().disable();
			http.headers().frameOptions().disable();
		}
		
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.userDetailsService(custumUserDetailService).passwordEncoder(getPasswordEncoder());
		}
		
		@Bean(name = "passwordEncoder")
		public PasswordEncoder getPasswordEncoder() {
			return new BCryptPasswordEncoder();
		}
	
}
