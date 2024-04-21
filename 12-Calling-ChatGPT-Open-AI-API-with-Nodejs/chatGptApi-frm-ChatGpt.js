const openai = require('openai');

// Set your OpenAI API key
// const apiKey = 'sk-proj-i8jNIob4WDIIyJWbUDXGT3BlbkFJ6VfVDc5nmwz05CG1gdph';
// const apiKey = new OpenAI({ apiKey: 'sk-proj-i8jNIob4WDIIyJWbUDXGT3BlbkFJ6VfVDc5nmwz05CG1gdph' });
// Initialize the OpenAI API client
const client = new openai(apiKey);

// Define the prompt
const prompt = "Once upon a time";

// Generate text based on the prompt
client.complete({
  engine: 'text-davinci-002',
  prompt: prompt,
  maxTokens: 50, // Maximum number of tokens to generate
  temperature: 0.7, // Controls the randomness of the generated text
  topP: 1, // Controls the diversity of the generated text
  frequencyPenalty: 0, // Penalizes words that occur too frequently
  presencePenalty: 0, // Penalizes words that don't occur
}).then((response) => {
  console.log(response.data.choices[0].text);
}).catch((error) => {
  console.error('Error:', error);
});
