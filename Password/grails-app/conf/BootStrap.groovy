import com.mh.password.Role
import com.mh.password.User
import com.mh.password.UserRole

class BootStrap {

    def init = { servletContext ->
				
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true) 
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		
		def testUser = new User(username: 'admin', enabled: true, password: 'password' ,email: 'mohamed.hafi@gmail.com') 
		testUser.save(flush: true)
		def testUser2 = new User(username: 'user', enabled: true, password: 'password' ,email: 'mohamed.hafi2@gmail.com')
		testUser2.save(flush: true)
		
		UserRole.create testUser, adminRole, true
		UserRole.create testUser2, userRole, true
    }
    def destroy = {
    }
}
