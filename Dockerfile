FROM prestashop/prestashop:8.0

# Install required packages
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Download and install theme
RUN cd /var/www/html/themes/ \
    && wget https://github.com/PrestaShop/classic-theme/archive/refs/heads/develop.zip \
    && unzip develop.zip \
    && rm develop.zip


