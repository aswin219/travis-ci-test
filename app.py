from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def hello():
    font_color = os.environ.get('FONT_COLOR', 'black')
    background_color = os.environ.get('BACKGROUND_COLOR', 'white')
    return render_template('index.html', font_color=font_color, background_color=background_color)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
