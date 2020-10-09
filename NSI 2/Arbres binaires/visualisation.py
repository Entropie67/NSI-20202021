from graphviz import Digraph
# https://graphviz.org/download/
g = Digraph('G', filename='hello.gv')

g.edge('Hello', 'World')

g.view()