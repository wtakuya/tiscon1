package tiscon1.form;

import lombok.Data;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.io.Serializable;

/**
 * @author kawasima
 */
@Data
public class AccountRegisterForm implements Serializable {
    @Size(min = 1, max = 50)
    @NotEmpty
    private String name;


    @NotEmpty
    @Email
    private String email;

    @Size(min = 10, max = 100)
    @NotEmpty
    @Pattern(regexp = "[a-zA-Z0-9]*")
    private String password;
    private String confirmPassword;
}
