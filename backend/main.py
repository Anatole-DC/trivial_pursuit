from flask import Flask, request, jsonify
from firebase_admin import credentials, firestore, initialize_app

app = Flask(__name__)

# Firebase initialization
cred = credentials.Certificate("trivial-pursuit-firebase-sdk.json")
default_app = initialize_app(cred)
db = firestore.client()
lobbies = db.collection('lobbies')


@app.route('/', methods=['GET'])
def homepage():

    print(request.url)

    return {"message": "Trivial Pursuit API"}


@app.route('/lobbies', methods=['GET'])
def read():
    """
        read() : Fetches documents from Firestore collection as JSON
        todo : Return document that matches query ID
        all_todos : Return all documents
    """
    try:
        all_todos = [doc.to_dict() for doc in lobbies.stream()]
        return jsonify(all_todos), 200
    except Exception as e:
        return f"An Error Occured: {e}"

def main():
    app.run(
        host="0.0.0.0",
        port=3000
    )


if __name__ == "__main__":
    main()