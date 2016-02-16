//package tiscon1.controller;

/**
 * Created by 拓也 on 2016/02/16.
 */
/*
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import tiscon1.form.AccountRegisterForm;

@Component // (1)
public class PasswordEqualsValidator implements Validator{
    @Override
    public boolean supports(Class<?> clazz) {
        return AccountRegisterForm.class.isAssignableFrom(clazz); // (2)
    }

    @Override
    public void validate(Object target, Errors errors) {
        AccountRegisterForm form = (AccountRegisterForm) target;
        String password = form.getPassword();
        String confirmPassword = form.getConfirmPassword();

        if (password == null || confirmPassword == null) { // (3)
            // must be checked by @NotNull
            return;
        }*/
        //if (!password.equals(confirmPassword)) { // (4)
          //  errors.rejectValue(/* (5) */ "password",
            ///* (6) */ "PasswordEqualsValidator.passwordResetForm.password",
            ///* (7) */ "password and confirm password must be same.");
        //}
    //}
//}
