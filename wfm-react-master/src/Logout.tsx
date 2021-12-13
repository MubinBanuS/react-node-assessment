const Logout = () => {
    localStorage.clear()
    return (
        <a href='/login' style={{ backgroundColor: "blue", color: "white", marginRight: "10px" }} className="btn btn-primary logout mt-3 ">
            <span className="fa fa-sign-out"></span> Log out</a>
    )
}

export default Logout;