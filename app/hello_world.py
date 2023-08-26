import time
from datetime import datetime

while True:
    now = datetime.now()
    current_time = now.strftime("%H:%M:%S")
    print(current_time + " - Hello World!")
    time.sleep(1.0)
