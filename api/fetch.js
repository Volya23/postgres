module.exports.getUsers = async() => {
    const response = await fetch ('https://randomuser.me/api/?results=1');
    const data = await response.json();
    console.log(data.results);
    return data.results;
}