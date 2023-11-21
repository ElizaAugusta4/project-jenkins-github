from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Bem-vindo ao meu aplicativo web!</h1><p>Esta é uma aplicação simples usando Flask.</p>'

if __name__ == '__main__':
    app.run(debug=True)
