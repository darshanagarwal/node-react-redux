import React, { useState, useEffect } from 'react'
import { useHistory } from 'react-router-dom';
import { login } from '../api'

const Login = () => {
    const history = useHistory();
    const [userName, setUserName] = useState("");
    const [password, setPassword] = useState("");
    const loginUser = () => {
        login('/login', 'POST', { userName: userName, password: password }).then(res => {
            if (res) {
                localStorage.setItem("user", JSON.stringify({ userName: userName }))
                history.push("/");
            } else {
                alert("Wrong credential")
            }

        }).catch(err => {
            alert(err || "Wrong credential")
        });
    }


    return (
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <h2 class="active"> Sign In </h2>

                <form>
                    <input type="text" id="login" onChange={e => setUserName(e.target.value)} class="fadeIn second" name="login" placeholder="login" />
                    <input type="text" id="password" class="fadeIn third" onChange={e => setPassword(e.target.value)} name="password" placeholder="password" />
                    <input type="button" class="fadeIn fourth" value="Log In" onClick={loginUser} />
                </form>



            </div>
        </div>
    )

}

export default Login;
