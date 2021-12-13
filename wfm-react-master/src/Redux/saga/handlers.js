import axios from 'axios'
import { call, put } from 'redux-saga/effects'

export function* loginHandler(action) {
  try {
    let result = yield call(axios.post, "http://localhost:8000/users/signin", action.data)
    localStorage.setItem("username", result.data.username)
    localStorage.setItem("usertype", result.data.usertype)
    localStorage.setItem("token", result.data.token)
    yield put({
      type: "LOGIN_SUCCESS", data:
      {
        username: result.data.username,
        usertype: result.data.usertype,
        token: result.data.token
      }
    })
  }
  catch (e) {
    yield put({ type: "LOGIN_FAILURE" })
  }
}

export function* managerHandler(action) {
  try {
    const getManagerData = () => {
      return axios({ method: 'get', url: 'http://localhost:8000/employees/manager/' + action.data.username, headers: { 'Authorization': 'Bearer ' + action.data.token } })
        .then(response => response.data)
        .catch(err => {
          throw err;
        });
    }
    let result = yield call(getManagerData)
    yield put({ type: "LOAD_EMPLOYEE", data: result })

  }
  catch (e) {
    yield put({ type: "FAILURE" })
  }
}

export function* wfmHandler(action) {
  try {
    const getWfmData = () => {
      return axios({ method: 'get', url: 'http://localhost:8000/employees/wfm/' + action.data.username, headers: { 'Authorization': 'Bearer ' + action.data.token } })
        .then(response => response.data)
        .catch(err => {
          throw err;
        });
    }
    let result = yield call(getWfmData)
    let wfmData = {
      wfmData: result
    }
    yield put({ type: "LOAD_WFM", data: wfmData })

  }
  catch (e) {
    yield put({ type: "FAILURE" })
  }
}

export function* sendRequestHandler(action) {

  try {
    const sendRequest = () => {
      return axios({
        method: 'post', url: 'http://localhost:8000/employees/softlock',
        data: {
          employee_id: action.data.employee_id,
          username: action.data.username,
          requestmessage: action.data.requestmessage
        },
        headers: { 'Authorization': 'Bearer ' + action.data.token }
      })
        .then(response => response.data)
        .catch(err => {
          throw err;
        });
    }

    let result = yield call(sendRequest)

    let sendRequestResponse = {
      message: result
    }
    yield put({ type: "SEND_SOFTLOCKREQUEST_ACTION", data: sendRequestResponse })
    const getManagerData = () => {
      return axios({ method: 'get', url: 'http://localhost:8000/employees/manager/' + action.data.username, headers: { 'Authorization': 'Bearer ' + action.data.token } })
        .then(response => response.data)
        .catch(err => {
          throw err;
        });
    }
    let result1 = yield call(getManagerData)
    yield put({ type: "LOAD_EMPLOYEE", data: result1 })
  }
  catch (e) {
    yield put({ type: "FAILURE" })
  }
}


export function* acceptRequestHandler(action) {
  try {
    const sendRequest = () => {
      return axios({
        method: 'post', url: 'http://localhost:8000/employees/softlockstatus',
        data: {
          employee_id: action.data.employee_id,
          status: action.data.status
        },
        headers: { 'Authorization': 'Bearer ' + action.data.token }
      })
        .then(response => response.data)
        .catch(err => {
          throw err;
        });
    }

    let result = yield call(sendRequest)

    let sendRequestResponse = {
      message: result
    }
    yield put({ type: "ACCEPT_SOFTLOCKREQUEST_ACTION", data: sendRequestResponse })
    const getWfmData = () => {
      return axios({ method: 'get', url: 'http://localhost:8000/employees/wfm/' + action.data.username, headers: { 'Authorization': 'Bearer ' + action.data.token } })
        .then(response => response.data)
        .catch(err => {
          throw err;
        });
    }
    let result1 = yield call(getWfmData)
    let wfmData = {
      wfmData: result1
    }
    yield put({ type: "LOAD_WFM", data: wfmData })
  }
  catch (e) {
    yield put({ type: "FAILURE" })
  }
}