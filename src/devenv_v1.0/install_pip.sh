# Modified for devenv_v1
python3 -m pip --no-cache-dir install pip --upgrade
python3 -m pip --no-cache-dir install setuptools --upgrade
python3 -m pip --no-cache-dir install wheel --upgrade
python3 -m pip --no-cache-dir install \
	numpy \
	pandas \
	pytest \
	dvc \
	dvc[ssh] \
	monai \ 
	tables \
	attrs \
	tqdm \
	simpleitk \
	tqdm \
	nilearn \
	nibabel \
	imutils \ 
	pynrrd \
	pydicom \
	tzlocal \ 
	pigar 
rm -rf /root/.cache
