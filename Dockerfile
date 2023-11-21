# Use a imagem base do Python
FROM python:3.9

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos necessários para o diretório de trabalho no container
COPY requirements.txt .
COPY app.py .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 5000 (a mesma usada pelo Flask)
EXPOSE 5000

# Comando para iniciar o aplicativo quando o container for executado
CMD ["python", "app.py"]
