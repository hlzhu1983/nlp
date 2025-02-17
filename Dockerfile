FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

RUN pip install hanlp \
        jupyter==1.0.0 \
        jupyter-http-over-ws==0.0.8 \
        ipykernel==5.1.1 \
        nbformat==4.4.0
        
RUN jupyter serverextension enable --py jupyter_http_over_ws

WORKDIR /jupyter

EXPOSE 8888

CMD ["bash", "-c", "jupyter notebook --notebook-dir=/jupyter --ip 0.0.0.0 --no-browser --allow-root"]
