module.exports.mapUsers = (usersArray) => {
    return usersArray.map((user) => `('${user.firstName}', '${user.lastName}', '${user.email}', '${user.gender}', ${user.isSubscribe})`)
    .join(',');
}