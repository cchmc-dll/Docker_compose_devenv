# Extend from any of the workspace versions/flavors
FROM mltooling/ml-workspace-gpu:0.13.2

RUN \
    apt-get update && \
    apt-get install -y libomp-dev libopenblas-base && \
    pip install --no-cache-dir pytest && \
    pip install --no-cache-dir pandas && \
    pip install --no-cache-dir dvc && \
    pip install --no-cache-dir monai && \
    pip install --no-cache-dir monailabel && \
    pip install --no-cache-dir attrs &&\
	pip install --no-cache-dir tqdm &&\
	pip install --no-cache-dir simpleitk &&\
	pip install --no-cache-dir tqdm &&\
	pip install --no-cache-dir nilearn &&\
	pip install --no-cache-dir nibabel &&\
	pip install --no-cache-dir imutils &&\
	pip install --no-cache-dir pynrrd &&\
	pip install --no-cache-dir pydicom &&\
	pip install --no-cache-dir tzlocal &&\
	pip install --no-cache-dir pigar &&\
    # Cleanup
    clean-layer.sh