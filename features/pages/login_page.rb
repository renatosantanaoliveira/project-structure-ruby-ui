class LogIn < SitePrism::Page
    set_url "/login"

    element :form_page, '#userForm'
    element :username, '#userName'
    element :password, '#password'
    element :btn_login, '#login'
    element :btn_newuser, '#newUser'
    element :message_error, '#name'

    def wait_page_load
        wait_until_form_page_visible
        wait_until_username_visible
        wait_until_password_visible
        wait_until_btn_login_visible
        wait_until_btn_newuser_visible
    end

    def set_username(_username)
        wait_until_username_visible
        username.set _username
    end

    def set_password(_password)
        wait_until_password_visible
        password.set _password
    end

    def wait_message_error
        wait_until_message_error_visible
    end

end