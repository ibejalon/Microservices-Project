FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
#Copy requirement file to working dir
COPY requirements.txt /

## Step 3:
# Copy source code to working directory
COPY . app.py /app/

## Step 4:
# run make file to install from requirements and perform other lint instructions
# Install packages from requirements.txt 
# hadolint ignore=DL3013
RUN pip install --trusted-host pypi.python.org -r requirements.txt

## Step 5:
# Expose port 80
EXPOSE 80

## Step 6:
# Run app.py at container launch
CMD [ "python3", "app.py" ]



