ARG GDAL_DOCKER_VERSION=3.2.0
FROM osgeo/gdal:alpine-small-${GDAL_DOCKER_VERSION}

ARG RIO_TILER_VERSION=2.0.0rc3
ARG RASTERIO_VERSION=1.2a1

WORKDIR /code
RUN apk add --no-cache gcc g++ musl-dev linux-headers python3-dev python3 py3-pip
RUN pip install --upgrade pip setuptools wheel
RUN pip install rasterio==${RASTERIO_VERSION} --no-binary=rasterio
RUN pip install rio-tiler==${RIO_TILER_VERSION}

