FROM insighttoolkit/itk-base
MAINTAINER Matt McCormick <matt.mccormick@kitware.com>

RUN mkdir /home/itk/bin/ITK
VOLUME ["/home/itk/bin/ITK"]
COPY cmd.sh /tmp/cmd.sh
CMD /tmp/cmd.sh
