FROM ocaml/opam2

RUN sudo apt-get -y install m4
RUN opam install -y ocamlformat