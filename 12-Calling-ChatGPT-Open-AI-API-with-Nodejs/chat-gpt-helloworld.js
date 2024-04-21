// const {Configuration, OpenAIApi} = require("openai");
const  openai  = require('openai');
// const apiKey = "sk-proj-i8jNIob4WDIIyJWbUDXGT3BlbkFJ6VfVDc5nmwz05CG1gdph";

// const configuration = Configuration({
//     apiKey: chatGptKey
// });
// const openai = new OpenAIApi(configuration);
// const openai = new OpenAIApi(Configuration({
//     apiKey: chatGptKey
// }));

const client = new openai({apiKey});

const prompt = "How many continents are there in the world?";

// client.complete({
//     // openai.createChatCompletion({
//         model: "gpt-3.5-turbo",
//         messages: [{"role": "user", content: "How many continents are there in the world?"}],
//     }).then((response)=>{
//         console.log(response.data.choices);
//     // })
// })


function helloworldchatgptapi(){
    openai.createChatCompletion({
        model: "gpt-3.5-turbo",
        messages: [{"role": "user", content: "How many continents are there in the world?"}],
    }).then((response)=>{
        console.log(response.data.choices);
    })
}

helloworldchatgptapi();