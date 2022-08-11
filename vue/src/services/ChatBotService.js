import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:9000"
});

export default {
    getKeywords(){
        return http.get('/keywords/')
    },
    getSql(){
        return http.get('/keywords/Sql')
    },
    getKeyword(keyword) {
        return http.get(`/keywords/${keyword}`)
    },
    getTopic(topic) {
        return http.get(`/topic/${topic}`)
    }

}