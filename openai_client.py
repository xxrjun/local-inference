# https://github.com/openai/openai-python

from openai import OpenAI

client = OpenAI(
    base_url="http://localhost:5000/v1",
    api_key="4321aba1234",
)

completion = client.chat.completions.create(
    model="yentinglin/Llama-3-Taiwan-8B-Instruct",
    messages=[{"role": "user", "content": "Hello!"}],
)

print(completion.choices[0].message)
