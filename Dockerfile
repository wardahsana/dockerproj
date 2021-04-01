FROM python:3.7.3-stretch
## above line uses official python3 package\ docker container and will build off of that

## Complete Step 1:
# Create a Working Directory
WORKDIR /app

## Complete Step 2:
# Copy source code to working directory. source code is in repo locally
COPY . app.py /app/

## Complete Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt


#RUN pip install --update pip &&\
#    pip install --trusted-host pypi.python.org -r requirements.txt

## Complete Step 4:
# Expose port 80

## Complete Step 5:
# Run app.py at container launch
