module.exports.getUsers = async() => {
    const response = await fetch ('https://randomuser.me/api/?results=50');
    const data = await response.json();
    return data.results;
}