from flask import Flask
from flask_cors import CORS
from decimal import Decimal, getcontext
import math

app = Flask(__name__)
CORS(app)


def calc_pi():
    # Initialize denominator
    k = Decimal(1)
 
    # Initialize sum
    s = Decimal(0)
 
    for i in range(75000):
 
        # even index elements are positive
        if i % 2 == 0:
            s += Decimal(4)/Decimal(k)
        else:
 
        # odd index elements are negative
            s -= Decimal(4)/Decimal(k)
 
        # denominator is odd
        k += Decimal(2)
    return s
    # return sum(1 / Decimal(16) ** k *
    #     (Decimal(4) / (8 * k + 1) -
    #      Decimal(2) / (8 * k + 4) -
    #      Decimal(1) / (8 * k + 5) -
    #      Decimal(1) / (8 * k + 6)) for k in range(100))
    # return 1

# def runcalc():
#     x = Decimal(0)
#     for i in range(30000000):
#         x = math.sqrt(i)
#     return x

@app.route('/')
def dashboard():
    getcontext().prec = 50
    return str(calc_pi())
    # return str(runcalc())


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
