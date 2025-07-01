
FROM python:3.10

WORKDIR /app

COPY gerador_peticao.py /app/

RUN pip install fastapi uvicorn python-docx

EXPOSE 8000

CMD ["uvicorn", "gerador_peticao:app", "--host", "0.0.0.0", "--port", "8000"]
