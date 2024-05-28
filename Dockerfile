# Use uma imagem base do Python
FROM python:3.8-slim-buster

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos do projeto para o contêiner
COPY . .

# Instale as dependências do projeto
RUN pip install --no-cache-dir flask pytube

# Defina a variável de ambiente necessária para o Flask
ENV FLASK_APP=main.py

# Exponha a porta em que o Flask será executado
EXPOSE 5000

# Comando para iniciar o aplicativo Flask
CMD ["flask", "run", "--host=0.0.0.0"]
# CMD [ "python", "main.py" ]