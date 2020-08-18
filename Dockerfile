FROM 3rdman/dotnet-jupyter:0.1

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root

# Copy notebooks
COPY ./nb ${HOME}/3rdman

RUN chown -R ${NB_UID} ${HOME}

USER ${USER}

WORKDIR ${HOME}/3rdman
