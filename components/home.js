function Home () {
    return(
        <div>
            testing 
            <p>{console.log(process.env.NEXT_PUBLIC_DB_HOST)}</p> 
            <p>DB_USER: {console.log(process.env.DB_USER)}</p>
            <p>NEXT_PUBLIC_DB_HOST: {process.env.NEXT_PUBLIC_DB_HOST}</p>
            <p>Password: {process.env.NEXT_PUBLIC_DB_PASS}</p>
        </div>
    )
}
export default Home