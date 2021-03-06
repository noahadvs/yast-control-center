FROM registry.opensuse.org/yast/head/containers/yast-cpp:latest
RUN zypper --gpg-auto-import-keys --non-interactive in --no-recommends \
  cmake \
  libdrm-devel \
  libjpeg-devel \
  "pkgconfig(Qt5Core)" \
  "pkgconfig(Qt5Gui)" \
  "pkgconfig(Qt5Widgets)" 
COPY . /usr/src/app
