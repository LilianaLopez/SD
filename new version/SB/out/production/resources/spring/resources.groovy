import com.login.UserPasswordEncoderListener
import com.sd.uni.biblioteca.service.user.IUserService
import com.sd.uni.biblioteca.service.user.UserServiceImpl

// Place your Spring DSL code here
import login.MyAuthenticationProvider;
beans = {
 //   userPasswordEncoderListener(UserPasswordEncoderListener, ref('hibernateDatastore'))
    myAuthenticationProvider(MyAuthenticationProvider) {

    }

    //userDetailsService(UserServiceImpl)
}

