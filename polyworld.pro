TEMPATE = app

CONFIG += qt warn_on debug

QT += opengl

# qmake selects gcc for cp files
QMAKE_CC = g++ 

INCLUDEPATH += . \
               agent \
               app \
               brain \
	       brain/groups \
	       brain/sheets \
               complexity \
               critter \
               environment \
               genome \
	       genome/groups \
               graphics \
	       logs \
	       monitor \
	       proplib \
               ui \
               utils

HEADERS += agent/agent.h \
           agent/EnergySensor.h \
           agent/LifeSpan.h \
           agent/RandomSensor.h \
           agent/Retina.h \
           app/debug.h \
           app/globals.h \
           app/Simulation.h \
           brain/Brain.h \
           brain/FiringRateModel.h \
           brain/Nerve.h \
           brain/NervousSystem.h \
           brain/SpikingModel.h \
           complexity/complexity_algorithm.h \
           complexity/complexity_brain.h \
           environment/barrier.h \
           environment/brick.h \
           environment/BrickPatch.h \
           environment/food.h \
           environment/FoodPatch.h \
           environment/Patch.h \
           genome/Gene.h \
           genome/Genome.h \
           genome/GenomeSchema.h \
           genome/GenomeUtil.h \
           genome/SynapseType.h \
	   genome/groups/GroupsBrain.h \
           graphics/gcamera.h \
           graphics/glight.h \
           graphics/gline.h \
           graphics/gmisc.h \
           graphics/gobject.h \
           graphics/gpoint.h \
           graphics/gpolygon.h \
           graphics/graphics.h \
           graphics/grect.h \
           graphics/gscene.h \
           graphics/gsquare.h \
           graphics/gstage.h \
	   proplib/proplib.h \
	   proplib/cppprops.h \
           ui/AgentPOVWindow.h \
           ui/BrainMonitorWindow.h \           
           ui/ChartWindow.h \
           ui/OverheadView.h \
           ui/SceneView.h \           
           ui/TextStatusWindow.h \
           utils/datalib.h \
           utils/distributions.h \
           utils/error.h \
           utils/gdlink.h \
           utils/graybin.h \
           utils/indexlist.h \
           utils/misc.h \
           utils/objectxsortedlist.h \
           utils/PwMovieUtils.h \
           utils/RandomNumberGenerator.h \
           utils/Resources.h \
           utils/Scalar.h \
           utils/Variant.h \
    brain/groups/GroupsNeuralNetRenderer.h \
    brain/groups/GroupsBrain.h \
    brain/sheets/SheetsModel.h \
    brain/sheets/SheetsBrain.h \
    logs/Logs.h \
    logs/Logger.h
           
SOURCES += agent/agent.cp \
           agent/EnergySensor.cp \
           agent/LifeSpan.cp \
           agent/RandomSensor.cp \
           agent/Retina.cp \
           app/debug.cp \
           app/globals.cp \
           app/Simulation.cp \
           brain/Brain.cp \
           brain/FiringRateModel.cp \
           brain/Nerve.cp \
           brain/NervousSystem.cp \
           brain/SpikingModel.cp \
           complexity/complexity_algorithm.cp \
           complexity/complexity_brain.cp \
           environment/barrier.cp \
           environment/brick.cp \
           environment/BrickPatch.cp \
           environment/food.cp \
           environment/FoodPatch.cp \
           environment/Patch.cp \
           genome/Gene.cp \
           genome/Genome.cp \
           genome/GenomeSchema.cp \
           genome/GenomeUtil.cp \
           genome/SynapseType.cp \
           graphics/gcamera.cp \
           graphics/glight.cp \
           graphics/gline.cp \
           graphics/gmisc.cp \
           graphics/gobject.cp \
           graphics/gpoint.cp \
           graphics/gpolygon.cp \
           graphics/grect.cp \
           graphics/gscene.cp \
           graphics/gsquare.cp \
           graphics/gstage.cp \
           ui/AgentPOVWindow.cp \
           ui/BrainMonitorWindow.cp \
           ui/ChartWindow.cp \
           ui/OverheadView.cp \
           ui/SceneView.cp \
           ui/TextStatusWindow.cp \
           utils/datalib.cp \
           utils/distributions.cp \
           utils/error.cp \
           utils/indexlist.cp \
           utils/misc.cp \
           utils/objectxsortedlist.cp \
           utils/PwMovieUtils.cp \
           utils/RandomNumberGenerator.cp \
           utils/Resources.cp \
           utils/Scalar.cp \
           utils/Variant.cp \ 
    brain/groups/GroupsBrain.cp \
    brain/sheets/SheetsModel.cp \
    brain/sheets/SheetsBrain.cp \
    logs/Logs.cp \
    logs/Logger.cp
#win32 = {
#INCLUDEPATH += F:\Qt\Tools\mingw48_32\i686-w64-mingw32\include\GL \
#               F:\work\gsl-1.8-lib\include \
#               F:\work\boost_1_43_0

#LIBS += -LF:\work\gsl-1.8-lib\lib \
#        -lgsl \
#        -lgslcblas \
#      -LF:\work\boost_1_43_0\lib
#}
