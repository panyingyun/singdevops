import sys
import vtkmodules.all as vtk
from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QApplication, QMainWindow
from vtkmodules.qt.QVTKRenderWindowInteractor import QVTKRenderWindowInteractor

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralWidget = QtWidgets.QWidget(MainWindow)
        self.gridlayout = QtWidgets.QGridLayout(self.centralWidget)
        self.vtkWidget = QVTKRenderWindowInteractor(self.centralWidget)
        self.gridlayout.addWidget(self.vtkWidget, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralWidget)

class SimpleView(QMainWindow):

    def __init__(self, parent=None):
        QMainWindow.__init__(self, parent)
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.render = vtk.vtkRenderer()
        self.render.SetBackground(0.1, 0.2, 0.3)
        self.ui.vtkWidget.GetRenderWindow().AddRenderer(self.render)
        self.iren = self.ui.vtkWidget.GetRenderWindow().GetInteractor()

        # Create source
        source = vtk.vtkConeSource()
        source.SetHeight(10)
        source.SetResolution(10)
        source.SetCenter(0, 0, 0)
        source.SetRadius(5.0)

        # Create a mapper
        mapper = vtk.vtkPolyDataMapper()
        mapper.SetInputConnection(source.GetOutputPort())

        # Create an actor
        actor = vtk.vtkActor()
        actor.SetMapper(mapper)

        self.render.AddActor(actor)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = SimpleView()
    window.show()
    window.iren.Initialize()  # Need this line to actually show the render inside Qt
    sys.exit(app.exec_())
