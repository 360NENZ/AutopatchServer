from __main__ import app

from flask import Response, send_from_directory, abort

from config import get_config

# resources
@app.route('/<path:path>', methods = ['GET'])
def fetch_resources(path):
   return send_from_directory(get_config()['resources']['path'], path)