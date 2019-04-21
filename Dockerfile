# import python's base image
FROM python:latest

# import files to the image
ADD main.py /

# command to launch when running the image
# executes: python ./main.py
CMD ["python", "./main.py"]
