FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN pip install --upgrade pip

RUN pip install pandas

RUN pip install -U scikit-learn

RUN pip install statsmodels

RUN pip install matplotlib

RUN pip install scipy

RUN pip install xlrd

RUN pip install pydotplus

RUN pip install seaborn

RUN pip install mayavi

RUN pip install PyQt5

RUN jupyter nbextension install --py mayavi --user

RUN jupyter nbextension enable --py mayavi --user

CMD [ "bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root" ]

