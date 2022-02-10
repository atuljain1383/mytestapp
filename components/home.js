function Home () {
    return(
        <div>
            testing test 
            {console.log(process.env.NEXT_PUBLIC_DB_HOST)}
            {process.env.NEXT_PUBLIC_DB_HOST}
        </div>
    )
}
export default Home