FROM odoo:18.0-20241125

USER root
RUN apt-get update \
 && apt-get install -y python3-pandas python3-sqlalchemy \
 && rm -rf /var/lib/apt/lists/*

# gTTS por pip (flag requerido en Debian)
RUN pip install --break-system-packages --no-cache-dir gTTS
USER odoo
