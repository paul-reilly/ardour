sudo apt-get -y install \
  libboost1.65-dev pkg-config \ 
  libasound2-dev `# alsa dev package` \ 
  libpulse-dev libglibmm-2.4-dev libglibmm-2.4-1v5 libgtkmm-2.4-dev \
  `# libgtkglextmm-x11-1.2-dev # maybe not needed?` \
  libsndfile1-dev libcurl3 libcurl-openssl1.0-dev libcurl4-openssl-dev \
  libarchive-dev liblo-dev libtag1-dev libvamp-sdk2v5 libvamp-hostsdk3v5 vamp-plugin-sdk \
  librubberband-dev libcurl4 curl \
  libaubio-dev libxml++2.6-dev liblrdf0-dev libsamplerate0-dev liblilv-dev

# no package for fftw3f
curl -O http://fftw.org/fftw-3.3.8.tar.gz
mkdir ./fftw-3.3.8
tar xvf fftw-3.3.8.tar.gz -C ./fftw-3.3.8
cd ./fftw-3.3.8/fftw-3.3.8
  ./configure --enable-shared --enable-float --enable-sse --enable-threads 
  make -j4
  sudo make install
  cd ../..

