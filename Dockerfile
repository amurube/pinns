# Use an official TensorFlow runtime as a parent image
FROM tensorflow/tensorflow:latest-gpu-jupyter

# Set the working directory to /app
WORKDIR /app

# Add requirements.txt file to the container
ADD requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]