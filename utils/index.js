module.exports.mapUsers = (usersArray) => {
    return usersArray
    .map(
        ({
            name: {first, last},
            email,
            gender,
            dob: {date}
        }) =>
            `('${first}', '${last}', '${email}', '${gender}', ${Boolean(Math.random() > 0.5)}, '${date}')`
    )
    .join(",");
};