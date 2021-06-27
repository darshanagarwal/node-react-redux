import axios from 'axios';
//mock API
let API_URL = 'http://localhost:8080/api/product';
export function callApi(endpoint, method = 'GET', body) {
    return axios({
        method,
        url: `${API_URL}${endpoint}`,
        data: body
    }).catch(err => {
        console.log(err);
    });
}

export function login(endpoint, method = 'GET', body) {
    return axios({
        method,
        url: `${API_URL}${endpoint}`,
        data: body
    }).catch(err => {
        console.log(err);
    });
}

