const { Configuration, OpenAIApi } = require("openai");

const configuration = new Configuration({
organization: process.env.ORG,
apiKey: process.env.API_KEY,
});

const openai = new OpenAIApi(configuration);

const getResponse = async() => {
const response = await openai.createChatCompletion({
model: "gpt-3.5-turbo",
 max_tokens: 30
messages: [{role: "user", content: "Hello world"}]
}).catch((err)=>console.log(err.response));
console.log(response)
}

getResponse()