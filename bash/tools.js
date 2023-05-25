module.exports.jwtParse = function (token) {
    console.log(JSON.parse(Buffer.from(token.split('.')[1], 'base64').toString()));
};