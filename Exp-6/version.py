import pandas as pd
from hdfs import InsecureClient

# Check pandas version
print("Pandas version:", pd.__version__)

# Test HDFS client connection
client = InsecureClient('http://localhost:9870', user='hadoop')
print("HDFS status:", client.status('/'))

