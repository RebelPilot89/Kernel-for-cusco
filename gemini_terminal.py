import google.generativeai as genai

genai.configure(api_key="AIzaSyCHOoGelyr58uOgrFDv0I646KKqX57Uhsg")

model = genai.GenerativeModel('models/gemini-1.5-pro-latest') # Se especifica el modelo aqui

while True:
    prompt_usuario = input("Tu pregunta o código: ")
    if prompt_usuario.lower() == "salir":
        break
    response = model.generate_content(prompt_usuario)
    print(response.text)
