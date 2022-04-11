from flask import Flask
import torch


app = Flask(__name__)


@app.route('/')
def get_gpuinfo():
    res = {}
    if(torch.cuda.is_available()):
        res = {
            "is_available": torch.cuda.is_available(),
            "device_name": torch.cuda.get_device_name(),
            "device_count": torch.cuda.device_count(),
            "current_device": torch.cuda.current_device(),
            "max_memory_allocated": torch.cuda.max_memory_allocated(),
        }
    else:
        res = {
            "is_available": torch.cuda.is_available(),
        }
    return res

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=9000, debug=True)