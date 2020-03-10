FROM python:3.7.3-stretch

#Copy requirement file to working dir
COPY requirements.txt /

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app

## Step 3:
# run make file to install from requirements and perform other lint instructions
# Install packages from requirements.txt 
# hadolint ignore=DL3013
RUN pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python3", "app.py" ]