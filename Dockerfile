FROM fluttyproger/auto-deliber:1.0.0

SHELL ["/bin/bash", "-c"]

ENV PATH="${PATH}:/app/stable-diffusion-webui/venv/bin"

WORKDIR /

RUN pip install runpod

ADD webui.py /app/stable-diffusion-webui/webui.py
ADD handler.py .
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD [ "/start.sh" ]