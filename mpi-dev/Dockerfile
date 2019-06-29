FROM gcc:latest

WORKDIR /tmp
RUN git clone https://github.com/spack/spack --depth=1
RUN /spack/bin/spack install openmpi
RUN /spack/bin/spack install hdf5
CMD ["/bin/sh"]