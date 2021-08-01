import os

def hello_docker():
    print("Hello from Docker Image/Conatiner")
    print(os.getcwd)

hello_docker()(host="0.0.0.0", port=int("4000"), debug=True)