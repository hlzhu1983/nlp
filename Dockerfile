FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

RUN pip --no-cache-dir install hanlp -i http://pypi.douban.com/simple/
