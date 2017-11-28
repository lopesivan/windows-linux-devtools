### Variables used in this Makefile
TOOLKIT=C:/Program Files/Microsoft Visual C++ Toolkit 2003
PSDK=C:/Program Files/Microsoft Platform SDK for Windows Server 2003 R2
RM=rm -f
Debug_CC="$(TOOLKIT)/bin/cl.exe"
Debug_CPP="$(TOOLKIT)/bin/cl.exe"
Debug_LD="$(TOOLKIT)/bin/link.exe"
Debug_LIB="$(TOOLKIT)/bin/link.exe"
Debug_RESCOMP=rc.exe
Release_CC="$(TOOLKIT)/bin/cl.exe"
Release_CPP="$(TOOLKIT)/bin/cl.exe"
Release_LD="$(TOOLKIT)/bin/link.exe"
Release_LIB="$(TOOLKIT)/bin/link.exe"
Release_RESCOMP=rc.exe
Release_FxsMemory_CC="$(TOOLKIT)/bin/cl.exe"
Release_FxsMemory_CPP="$(TOOLKIT)/bin/cl.exe"
Release_FxsMemory_LD="$(TOOLKIT)/bin/link.exe"
Release_FxsMemory_LIB="$(TOOLKIT)/bin/link.exe"
Release_FxsMemory_RESCOMP=rc.exe
Debug_FxsMemory_CC="$(TOOLKIT)/bin/cl.exe"
Debug_FxsMemory_CPP="$(TOOLKIT)/bin/cl.exe"
Debug_FxsMemory_LD="$(TOOLKIT)/bin/link.exe"
Debug_FxsMemory_LIB="$(TOOLKIT)/bin/link.exe"
Debug_FxsMemory_RESCOMP=rc.exe
Final_Release_CC="$(TOOLKIT)/bin/cl.exe"
Final_Release_CPP="$(TOOLKIT)/bin/cl.exe"
Final_Release_LD="$(TOOLKIT)/bin/link.exe"
Final_Release_LIB="$(TOOLKIT)/bin/link.exe"
Final_Release_RESCOMP=rc.exe

### Compiler/linker options
Debug_GLOBAL_CFLAGS=
Debug_PROJECT_CFLAGS=
Debug_GLOBAL_LDFLAGS=
Debug_PROJECT_LDFLAGS=
Debug_GLOBAL_INCS= /I"$(TOOLKIT)/include" /I"$(PSDK)/Include"
Debug_PROJECT_INCS=
Debug_GLOBAL_LIBDIRS= /LIBPATH:"$(TOOLKIT)/lib" /LIBPATH:"$(PSDK)/Lib"
Debug_PROJECT_LIBDIRS=
Debug_GLOBAL_LIBS=
Debug_PROJECT_LIBS=
Release_GLOBAL_CFLAGS=
Release_PROJECT_CFLAGS=
Release_GLOBAL_LDFLAGS=
Release_PROJECT_LDFLAGS=
Release_GLOBAL_INCS= /I"$(TOOLKIT)/include" /I"$(PSDK)/Include"
Release_PROJECT_INCS=
Release_GLOBAL_LIBDIRS= /LIBPATH:"$(TOOLKIT)/lib" /LIBPATH:"$(PSDK)/Lib"
Release_PROJECT_LIBDIRS=
Release_GLOBAL_LIBS=
Release_PROJECT_LIBS=
Release_FxsMemory_GLOBAL_CFLAGS=
Release_FxsMemory_PROJECT_CFLAGS=
Release_FxsMemory_GLOBAL_LDFLAGS=
Release_FxsMemory_PROJECT_LDFLAGS=
Release_FxsMemory_GLOBAL_INCS= /I"$(TOOLKIT)/include" /I"$(PSDK)/Include"
Release_FxsMemory_PROJECT_INCS=
Release_FxsMemory_GLOBAL_LIBDIRS= /LIBPATH:"$(TOOLKIT)/lib" /LIBPATH:"$(PSDK)/Lib"
Release_FxsMemory_PROJECT_LIBDIRS=
Release_FxsMemory_GLOBAL_LIBS=
Release_FxsMemory_PROJECT_LIBS=
Debug_FxsMemory_GLOBAL_CFLAGS=
Debug_FxsMemory_PROJECT_CFLAGS=
Debug_FxsMemory_GLOBAL_LDFLAGS=
Debug_FxsMemory_PROJECT_LDFLAGS=
Debug_FxsMemory_GLOBAL_INCS= /I"$(TOOLKIT)/include" /I"$(PSDK)/Include"
Debug_FxsMemory_PROJECT_INCS=
Debug_FxsMemory_GLOBAL_LIBDIRS= /LIBPATH:"$(TOOLKIT)/lib" /LIBPATH:"$(PSDK)/Lib"
Debug_FxsMemory_PROJECT_LIBDIRS=
Debug_FxsMemory_GLOBAL_LIBS=
Debug_FxsMemory_PROJECT_LIBS=
Final_Release_GLOBAL_CFLAGS=
Final_Release_PROJECT_CFLAGS=
Final_Release_GLOBAL_LDFLAGS=
Final_Release_PROJECT_LDFLAGS=
Final_Release_GLOBAL_INCS= /I"$(TOOLKIT)/include" /I"$(PSDK)/Include"
Final_Release_PROJECT_INCS=
Final_Release_GLOBAL_LIBDIRS= /LIBPATH:"$(TOOLKIT)/lib" /LIBPATH:"$(PSDK)/Lib"
Final_Release_PROJECT_LIBDIRS=
Final_Release_GLOBAL_LIBS=
Final_Release_PROJECT_LIBS=

### Targets compiler flags
Debug_CFLAGS= $(Debug_PROJECT_CFLAGS) /MDd /GR /W3 /O0 EHsc /DWIN32 /D_DEBUG /D_WINDOWS /D_USRDLL /DCVGAMECOREDLL_EXPORTS $(Debug_GLOBAL_CFLAGS)
Release_CFLAGS= $(Release_PROJECT_CFLAGS) /MD /GR /O2 /W3 /Zi EHsc /DWIN32 /DNDEBUG /D_WINDOWS /D_USRDLL /DCVGAMECOREDLL_EXPORTS $(Release_GLOBAL_CFLAGS)
Release_FxsMemory_CFLAGS= $(Release_FxsMemory_PROJECT_CFLAGS) /MD /GR /O2 /W3 /Zi EHsc /DWIN32 /DNDEBUG /D_WINDOWS /D_USRDLL /DCVGAMECOREDLL_EXPORTS /DUSE_MEMMANAGER $(Release_FxsMemory_GLOBAL_CFLAGS)
Debug_FxsMemory_CFLAGS= $(Debug_FxsMemory_PROJECT_CFLAGS) /MDd /GR /W3 /O0 EHsc /DWIN32 /D_DEBUG /D_WINDOWS /D_USRDLL /DCVGAMECOREDLL_EXPORTS /DUSE_MEMMANAGER $(Debug_FxsMemory_GLOBAL_CFLAGS)
Final_Release_CFLAGS= $(Final_Release_PROJECT_CFLAGS) /MD /Gd /G7 /GR /O2 /W3 /EHsc /DWIN32 /DNDEBUG /D_WINDOWS /D_USRDLL /DCVGAMECOREDLL_EXPORTS /DFINAL_RELEASE $(Final_Release_GLOBAL_CFLAGS)

### Targets linker flags
Debug_LDFLAGS= $(Debug_PROJECT_LDFLAGS) /debug /pdb:Debug\CvGameCoreDLL_DEBUG.pdb $(Debug_GLOBAL_LDFLAGS)
Release_LDFLAGS= $(Release_PROJECT_LDFLAGS) /DEBUG /debug /INCREMENTAL:NO /pdb:Release\CvGameCoreDLL_RELEASE.pdb $(Release_GLOBAL_LDFLAGS)
Release_FxsMemory_LDFLAGS= $(Release_FxsMemory_PROJECT_LDFLAGS) /DEBUG /debug /INCREMENTAL:NO /pdb:Release FxsMemory\CvGameCoreDLL_RELEASE_MEM.pdb $(Release_FxsMemory_GLOBAL_LDFLAGS)
Debug_FxsMemory_LDFLAGS= $(Debug_FxsMemory_PROJECT_LDFLAGS) /debug /pdb:Debug FxsMemory\CvGameCoreDLL_DEBUG_MEM.pdb $(Debug_FxsMemory_GLOBAL_LDFLAGS)
Final_Release_LDFLAGS= $(Final_Release_PROJECT_LDFLAGS) /debug /INCREMENTAL:NO /SUBSYSTEM:WINDOWS /OPT:REF /OPT:ICF $(Final_Release_GLOBAL_LDFLAGS)

### Targets include directories
Debug_INCS= $(Debug_PROJECT_INCS) /IBoost-1.32.0/include /IPython24/include $(Debug_GLOBAL_INCS)
Release_INCS= $(Release_PROJECT_INCS) /IBoost-1.32.0/include /IPython24/include $(Release_GLOBAL_INCS)
Release_FxsMemory_INCS= $(Release_FxsMemory_PROJECT_INCS) /IBoost-1.32.0/include /IPython24/include $(Release_FxsMemory_GLOBAL_INCS)
Debug_FxsMemory_INCS= $(Debug_FxsMemory_PROJECT_INCS) /IBoost-1.32.0/include /IPython24/include $(Debug_FxsMemory_GLOBAL_INCS)
Final_Release_INCS= $(Final_Release_PROJECT_INCS) /IBoost-1.32.0/include /IPython24/include $(Final_Release_GLOBAL_INCS)

### Targets library directories
Debug_LIBDIRS= $(Debug_PROJECT_LIBDIRS) /LIBPATH:Python24/libs /LIBPATH:boost-1.32.0/libs/ $(Debug_GLOBAL_LIBDIRS)
Release_LIBDIRS= $(Release_PROJECT_LIBDIRS) /LIBPATH:Python24/libs /LIBPATH:boost-1.32.0/libs/ $(Release_GLOBAL_LIBDIRS)
Release_FxsMemory_LIBDIRS= $(Release_FxsMemory_PROJECT_LIBDIRS) /LIBPATH:Python24/libs /LIBPATH:boost-1.32.0/libs/ $(Release_FxsMemory_GLOBAL_LIBDIRS)
Debug_FxsMemory_LIBDIRS= $(Debug_FxsMemory_PROJECT_LIBDIRS) /LIBPATH:Python24/libs /LIBPATH:boost-1.32.0/libs/ $(Debug_FxsMemory_GLOBAL_LIBDIRS)
Final_Release_LIBDIRS= $(Final_Release_PROJECT_LIBDIRS) /LIBPATH:Python24/libs /LIBPATH:boost-1.32.0/libs/ $(Final_Release_GLOBAL_LIBDIRS)

### Targets libraries
Debug_LIBS= $(Debug_PROJECT_LIBS) boost_python-vc71-mt-gd-1_32.lib winmm.lib $(Debug_GLOBAL_LIBS)
Release_LIBS= $(Release_PROJECT_LIBS) boost_python-vc71-mt-1_32.lib winmm.lib $(Release_GLOBAL_LIBS)
Release_FxsMemory_LIBS= $(Release_FxsMemory_PROJECT_LIBS) boost_python-vc71-mt-1_32.lib winmm.lib $(Release_FxsMemory_GLOBAL_LIBS)
Debug_FxsMemory_LIBS= $(Debug_FxsMemory_PROJECT_LIBS) boost_python-vc71-mt-gd-1_32.lib winmm.lib $(Debug_FxsMemory_GLOBAL_LIBS)
Final_Release_LIBS= $(Final_Release_PROJECT_LIBS) boost_python-vc71-mt-1_32.lib winmm.lib user32.lib $(Final_Release_GLOBAL_LIBS)

###############################################################################
#         You shouldn't need to modify anything beyond this point             #
###############################################################################

### Resources used in this Makefile
Debug_RESOURCE=
Release_RESOURCE=
Release_FxsMemory_RESOURCE=
Debug_FxsMemory_RESOURCE=
Final_Release_RESOURCE=

### Objects used in this Makefile
Debug_OBJS=Debug/CvArea.obj Debug/CvArtFileMgr.obj Debug/CvCity.obj Debug/CvCityAI.obj Debug/CvDLLButtonPopup.obj Debug/CvDLLEntity.obj Debug/CvDLLPython.obj Debug/CvDLLWidgetData.obj Debug/CvDeal.obj Debug/CvDiploParameters.obj Debug/CvFractal.obj Debug/CvGame.obj Debug/CvGameAI.obj Debug/CvGameCoreDLL.obj Debug/CvGameCoreUtils.obj Debug/CvGameTextMgr.obj Debug/CvGlobals.obj Debug/CvHallOfFameInfo.obj Debug/CvInfoWater.obj Debug/CvInfos.obj Debug/CvInitCore.obj Debug/CvMap.obj Debug/CvMapGenerator.obj Debug/CvPlayer.obj Debug/CvPlayerAI.obj Debug/CvPlot.obj Debug/CvPlotGroup.obj Debug/CvPopupInfo.obj Debug/CvPopupReturn.obj Debug/CvRandom.obj Debug/CvReplayInfo.obj Debug/CvReplayMessage.obj Debug/CvSelectionGroup.obj Debug/CvSelectionGroupAI.obj Debug/CvStructs.obj Debug/CvTalkingHeadMessage.obj Debug/CvTeam.obj Debug/CvTeamAI.obj Debug/CvUnit.obj Debug/CvUnitAI.obj Debug/CvXMLLoadUtility.obj Debug/CvXMLLoadUtilityGet.obj Debug/CvXMLLoadUtilityInit.obj Debug/CvXMLLoadUtilitySet.obj Debug/CyArea.obj Debug/CyAreaInterface.obj Debug/CyArgsList.obj Debug/CyArtFileMgr.obj Debug/CyArtFileMgrInterface.obj Debug/CyCity.obj Debug/CyCityInterface1.obj Debug/CyDeal.obj Debug/CyEnumsInterface.obj Debug/CyGame.obj Debug/CyGameCoreUtils.obj Debug/CyGameCoreUtilsInterface.obj Debug/CyGameInterface.obj Debug/CyGameTextMgr.obj Debug/CyGameTextMgrInterface.obj Debug/CyGlobalContext.obj Debug/CyGlobalContextInterface1.obj Debug/CyGlobalContextInterface2.obj Debug/CyGlobalContextInterface3.obj Debug/CyGlobalContextInterface4.obj Debug/CyHallOfFameInfo.obj Debug/CyHallOfFameInterface.obj Debug/CyInfoInterface1.obj Debug/CyInfoInterface2.obj Debug/CyInfoInterface3.obj Debug/CyMap.obj Debug/CyMapGenerator.obj Debug/CyMapGeneratorInterface.obj Debug/CyMapInterface.obj Debug/CyPlayer.obj Debug/CyPlayerInterface1.obj Debug/CyPlot.obj Debug/CyPlotInterface1.obj Debug/CyRandomInterface.obj Debug/CyReplayInfo.obj Debug/CySelectionGroup.obj Debug/CySelectionGroupInterface.obj Debug/CyStructsInterface1.obj Debug/CyTeam.obj Debug/CyTeamInterface.obj Debug/CyUnit.obj Debug/CyUnitInterface1.obj Debug/FAssert.obj Debug/FDialogTemplate.obj Debug/_precompile.obj 
Debug_LINKOBJS=$(Debug_OBJS)
Release_OBJS=Release/CvArea.obj Release/CvArtFileMgr.obj Release/CvCity.obj Release/CvCityAI.obj Release/CvDLLButtonPopup.obj Release/CvDLLEntity.obj Release/CvDLLPython.obj Release/CvDLLWidgetData.obj Release/CvDeal.obj Release/CvDiploParameters.obj Release/CvFractal.obj Release/CvGame.obj Release/CvGameAI.obj Release/CvGameCoreDLL.obj Release/CvGameCoreUtils.obj Release/CvGameTextMgr.obj Release/CvGlobals.obj Release/CvHallOfFameInfo.obj Release/CvInfoWater.obj Release/CvInfos.obj Release/CvInitCore.obj Release/CvMap.obj Release/CvMapGenerator.obj Release/CvPlayer.obj Release/CvPlayerAI.obj Release/CvPlot.obj Release/CvPlotGroup.obj Release/CvPopupInfo.obj Release/CvPopupReturn.obj Release/CvRandom.obj Release/CvReplayInfo.obj Release/CvReplayMessage.obj Release/CvSelectionGroup.obj Release/CvSelectionGroupAI.obj Release/CvStructs.obj Release/CvTalkingHeadMessage.obj Release/CvTeam.obj Release/CvTeamAI.obj Release/CvUnit.obj Release/CvUnitAI.obj Release/CvXMLLoadUtility.obj Release/CvXMLLoadUtilityGet.obj Release/CvXMLLoadUtilityInit.obj Release/CvXMLLoadUtilitySet.obj Release/CyArea.obj Release/CyAreaInterface.obj Release/CyArgsList.obj Release/CyArtFileMgr.obj Release/CyArtFileMgrInterface.obj Release/CyCity.obj Release/CyCityInterface1.obj Release/CyDeal.obj Release/CyEnumsInterface.obj Release/CyGame.obj Release/CyGameCoreUtils.obj Release/CyGameCoreUtilsInterface.obj Release/CyGameInterface.obj Release/CyGameTextMgr.obj Release/CyGameTextMgrInterface.obj Release/CyGlobalContext.obj Release/CyGlobalContextInterface1.obj Release/CyGlobalContextInterface2.obj Release/CyGlobalContextInterface3.obj Release/CyGlobalContextInterface4.obj Release/CyHallOfFameInfo.obj Release/CyHallOfFameInterface.obj Release/CyInfoInterface1.obj Release/CyInfoInterface2.obj Release/CyInfoInterface3.obj Release/CyMap.obj Release/CyMapGenerator.obj Release/CyMapGeneratorInterface.obj Release/CyMapInterface.obj Release/CyPlayer.obj Release/CyPlayerInterface1.obj Release/CyPlot.obj Release/CyPlotInterface1.obj Release/CyRandomInterface.obj Release/CyReplayInfo.obj Release/CySelectionGroup.obj Release/CySelectionGroupInterface.obj Release/CyStructsInterface1.obj Release/CyTeam.obj Release/CyTeamInterface.obj Release/CyUnit.obj Release/CyUnitInterface1.obj Release/FAssert.obj Release/FDialogTemplate.obj Release/_precompile.obj 
Release_LINKOBJS=$(Release_OBJS)
Release_FxsMemory_OBJS=Release_FxsMemory/CvArea.obj Release_FxsMemory/CvArtFileMgr.obj Release_FxsMemory/CvCity.obj Release_FxsMemory/CvCityAI.obj Release_FxsMemory/CvDLLButtonPopup.obj Release_FxsMemory/CvDLLEntity.obj Release_FxsMemory/CvDLLPython.obj Release_FxsMemory/CvDLLWidgetData.obj Release_FxsMemory/CvDeal.obj Release_FxsMemory/CvDiploParameters.obj Release_FxsMemory/CvFractal.obj Release_FxsMemory/CvGame.obj Release_FxsMemory/CvGameAI.obj Release_FxsMemory/CvGameCoreDLL.obj Release_FxsMemory/CvGameCoreUtils.obj Release_FxsMemory/CvGameTextMgr.obj Release_FxsMemory/CvGlobals.obj Release_FxsMemory/CvHallOfFameInfo.obj Release_FxsMemory/CvInfoWater.obj Release_FxsMemory/CvInfos.obj Release_FxsMemory/CvInitCore.obj Release_FxsMemory/CvMap.obj Release_FxsMemory/CvMapGenerator.obj Release_FxsMemory/CvPlayer.obj Release_FxsMemory/CvPlayerAI.obj Release_FxsMemory/CvPlot.obj Release_FxsMemory/CvPlotGroup.obj Release_FxsMemory/CvPopupInfo.obj Release_FxsMemory/CvPopupReturn.obj Release_FxsMemory/CvRandom.obj Release_FxsMemory/CvReplayInfo.obj Release_FxsMemory/CvReplayMessage.obj Release_FxsMemory/CvSelectionGroup.obj Release_FxsMemory/CvSelectionGroupAI.obj Release_FxsMemory/CvStructs.obj Release_FxsMemory/CvTalkingHeadMessage.obj Release_FxsMemory/CvTeam.obj Release_FxsMemory/CvTeamAI.obj Release_FxsMemory/CvUnit.obj Release_FxsMemory/CvUnitAI.obj Release_FxsMemory/CvXMLLoadUtility.obj Release_FxsMemory/CvXMLLoadUtilityGet.obj Release_FxsMemory/CvXMLLoadUtilityInit.obj Release_FxsMemory/CvXMLLoadUtilitySet.obj Release_FxsMemory/CyArea.obj Release_FxsMemory/CyAreaInterface.obj Release_FxsMemory/CyArgsList.obj Release_FxsMemory/CyArtFileMgr.obj Release_FxsMemory/CyArtFileMgrInterface.obj Release_FxsMemory/CyCity.obj Release_FxsMemory/CyCityInterface1.obj Release_FxsMemory/CyDeal.obj Release_FxsMemory/CyEnumsInterface.obj Release_FxsMemory/CyGame.obj Release_FxsMemory/CyGameCoreUtils.obj Release_FxsMemory/CyGameCoreUtilsInterface.obj Release_FxsMemory/CyGameInterface.obj Release_FxsMemory/CyGameTextMgr.obj Release_FxsMemory/CyGameTextMgrInterface.obj Release_FxsMemory/CyGlobalContext.obj Release_FxsMemory/CyGlobalContextInterface1.obj Release_FxsMemory/CyGlobalContextInterface2.obj Release_FxsMemory/CyGlobalContextInterface3.obj Release_FxsMemory/CyGlobalContextInterface4.obj Release_FxsMemory/CyHallOfFameInfo.obj Release_FxsMemory/CyHallOfFameInterface.obj Release_FxsMemory/CyInfoInterface1.obj Release_FxsMemory/CyInfoInterface2.obj Release_FxsMemory/CyInfoInterface3.obj Release_FxsMemory/CyMap.obj Release_FxsMemory/CyMapGenerator.obj Release_FxsMemory/CyMapGeneratorInterface.obj Release_FxsMemory/CyMapInterface.obj Release_FxsMemory/CyPlayer.obj Release_FxsMemory/CyPlayerInterface1.obj Release_FxsMemory/CyPlot.obj Release_FxsMemory/CyPlotInterface1.obj Release_FxsMemory/CyRandomInterface.obj Release_FxsMemory/CyReplayInfo.obj Release_FxsMemory/CySelectionGroup.obj Release_FxsMemory/CySelectionGroupInterface.obj Release_FxsMemory/CyStructsInterface1.obj Release_FxsMemory/CyTeam.obj Release_FxsMemory/CyTeamInterface.obj Release_FxsMemory/CyUnit.obj Release_FxsMemory/CyUnitInterface1.obj Release_FxsMemory/FAssert.obj Release_FxsMemory/FDialogTemplate.obj Release_FxsMemory/_precompile.obj 
Release_FxsMemory_LINKOBJS=$(Release_FxsMemory_OBJS)
Debug_FxsMemory_OBJS=Debug_FxsMemory/CvArea.obj Debug_FxsMemory/CvArtFileMgr.obj Debug_FxsMemory/CvCity.obj Debug_FxsMemory/CvCityAI.obj Debug_FxsMemory/CvDLLButtonPopup.obj Debug_FxsMemory/CvDLLEntity.obj Debug_FxsMemory/CvDLLPython.obj Debug_FxsMemory/CvDLLWidgetData.obj Debug_FxsMemory/CvDeal.obj Debug_FxsMemory/CvDiploParameters.obj Debug_FxsMemory/CvFractal.obj Debug_FxsMemory/CvGame.obj Debug_FxsMemory/CvGameAI.obj Debug_FxsMemory/CvGameCoreDLL.obj Debug_FxsMemory/CvGameCoreUtils.obj Debug_FxsMemory/CvGameTextMgr.obj Debug_FxsMemory/CvGlobals.obj Debug_FxsMemory/CvHallOfFameInfo.obj Debug_FxsMemory/CvInfoWater.obj Debug_FxsMemory/CvInfos.obj Debug_FxsMemory/CvInitCore.obj Debug_FxsMemory/CvMap.obj Debug_FxsMemory/CvMapGenerator.obj Debug_FxsMemory/CvPlayer.obj Debug_FxsMemory/CvPlayerAI.obj Debug_FxsMemory/CvPlot.obj Debug_FxsMemory/CvPlotGroup.obj Debug_FxsMemory/CvPopupInfo.obj Debug_FxsMemory/CvPopupReturn.obj Debug_FxsMemory/CvRandom.obj Debug_FxsMemory/CvReplayInfo.obj Debug_FxsMemory/CvReplayMessage.obj Debug_FxsMemory/CvSelectionGroup.obj Debug_FxsMemory/CvSelectionGroupAI.obj Debug_FxsMemory/CvStructs.obj Debug_FxsMemory/CvTalkingHeadMessage.obj Debug_FxsMemory/CvTeam.obj Debug_FxsMemory/CvTeamAI.obj Debug_FxsMemory/CvUnit.obj Debug_FxsMemory/CvUnitAI.obj Debug_FxsMemory/CvXMLLoadUtility.obj Debug_FxsMemory/CvXMLLoadUtilityGet.obj Debug_FxsMemory/CvXMLLoadUtilityInit.obj Debug_FxsMemory/CvXMLLoadUtilitySet.obj Debug_FxsMemory/CyArea.obj Debug_FxsMemory/CyAreaInterface.obj Debug_FxsMemory/CyArgsList.obj Debug_FxsMemory/CyArtFileMgr.obj Debug_FxsMemory/CyArtFileMgrInterface.obj Debug_FxsMemory/CyCity.obj Debug_FxsMemory/CyCityInterface1.obj Debug_FxsMemory/CyDeal.obj Debug_FxsMemory/CyEnumsInterface.obj Debug_FxsMemory/CyGame.obj Debug_FxsMemory/CyGameCoreUtils.obj Debug_FxsMemory/CyGameCoreUtilsInterface.obj Debug_FxsMemory/CyGameInterface.obj Debug_FxsMemory/CyGameTextMgr.obj Debug_FxsMemory/CyGameTextMgrInterface.obj Debug_FxsMemory/CyGlobalContext.obj Debug_FxsMemory/CyGlobalContextInterface1.obj Debug_FxsMemory/CyGlobalContextInterface2.obj Debug_FxsMemory/CyGlobalContextInterface3.obj Debug_FxsMemory/CyGlobalContextInterface4.obj Debug_FxsMemory/CyHallOfFameInfo.obj Debug_FxsMemory/CyHallOfFameInterface.obj Debug_FxsMemory/CyInfoInterface1.obj Debug_FxsMemory/CyInfoInterface2.obj Debug_FxsMemory/CyInfoInterface3.obj Debug_FxsMemory/CyMap.obj Debug_FxsMemory/CyMapGenerator.obj Debug_FxsMemory/CyMapGeneratorInterface.obj Debug_FxsMemory/CyMapInterface.obj Debug_FxsMemory/CyPlayer.obj Debug_FxsMemory/CyPlayerInterface1.obj Debug_FxsMemory/CyPlot.obj Debug_FxsMemory/CyPlotInterface1.obj Debug_FxsMemory/CyRandomInterface.obj Debug_FxsMemory/CyReplayInfo.obj Debug_FxsMemory/CySelectionGroup.obj Debug_FxsMemory/CySelectionGroupInterface.obj Debug_FxsMemory/CyStructsInterface1.obj Debug_FxsMemory/CyTeam.obj Debug_FxsMemory/CyTeamInterface.obj Debug_FxsMemory/CyUnit.obj Debug_FxsMemory/CyUnitInterface1.obj Debug_FxsMemory/FAssert.obj Debug_FxsMemory/FDialogTemplate.obj Debug_FxsMemory/_precompile.obj 
Debug_FxsMemory_LINKOBJS=$(Debug_FxsMemory_OBJS)
Final_Release_OBJS=Final_Release/CvArea.obj Final_Release/CvArtFileMgr.obj Final_Release/CvCity.obj Final_Release/CvCityAI.obj Final_Release/CvDLLButtonPopup.obj Final_Release/CvDLLEntity.obj Final_Release/CvDLLPython.obj Final_Release/CvDLLWidgetData.obj Final_Release/CvDeal.obj Final_Release/CvDiploParameters.obj Final_Release/CvFractal.obj Final_Release/CvGame.obj Final_Release/CvGameAI.obj Final_Release/CvGameCoreDLL.obj Final_Release/CvGameCoreUtils.obj Final_Release/CvGameTextMgr.obj Final_Release/CvGlobals.obj Final_Release/CvHallOfFameInfo.obj Final_Release/CvInfoWater.obj Final_Release/CvInfos.obj Final_Release/CvInitCore.obj Final_Release/CvMap.obj Final_Release/CvMapGenerator.obj Final_Release/CvPlayer.obj Final_Release/CvPlayerAI.obj Final_Release/CvPlot.obj Final_Release/CvPlotGroup.obj Final_Release/CvPopupInfo.obj Final_Release/CvPopupReturn.obj Final_Release/CvRandom.obj Final_Release/CvReplayInfo.obj Final_Release/CvReplayMessage.obj Final_Release/CvSelectionGroup.obj Final_Release/CvSelectionGroupAI.obj Final_Release/CvStructs.obj Final_Release/CvTalkingHeadMessage.obj Final_Release/CvTeam.obj Final_Release/CvTeamAI.obj Final_Release/CvUnit.obj Final_Release/CvUnitAI.obj Final_Release/CvXMLLoadUtility.obj Final_Release/CvXMLLoadUtilityGet.obj Final_Release/CvXMLLoadUtilityInit.obj Final_Release/CvXMLLoadUtilitySet.obj Final_Release/CyArea.obj Final_Release/CyAreaInterface.obj Final_Release/CyArgsList.obj Final_Release/CyArtFileMgr.obj Final_Release/CyArtFileMgrInterface.obj Final_Release/CyCity.obj Final_Release/CyCityInterface1.obj Final_Release/CyDeal.obj Final_Release/CyEnumsInterface.obj Final_Release/CyGame.obj Final_Release/CyGameCoreUtils.obj Final_Release/CyGameCoreUtilsInterface.obj Final_Release/CyGameInterface.obj Final_Release/CyGameTextMgr.obj Final_Release/CyGameTextMgrInterface.obj Final_Release/CyGlobalContext.obj Final_Release/CyGlobalContextInterface1.obj Final_Release/CyGlobalContextInterface2.obj Final_Release/CyGlobalContextInterface3.obj Final_Release/CyGlobalContextInterface4.obj Final_Release/CyHallOfFameInfo.obj Final_Release/CyHallOfFameInterface.obj Final_Release/CyInfoInterface1.obj Final_Release/CyInfoInterface2.obj Final_Release/CyInfoInterface3.obj Final_Release/CyMap.obj Final_Release/CyMapGenerator.obj Final_Release/CyMapGeneratorInterface.obj Final_Release/CyMapInterface.obj Final_Release/CyPlayer.obj Final_Release/CyPlayerInterface1.obj Final_Release/CyPlot.obj Final_Release/CyPlotInterface1.obj Final_Release/CyRandomInterface.obj Final_Release/CyReplayInfo.obj Final_Release/CySelectionGroup.obj Final_Release/CySelectionGroupInterface.obj Final_Release/CyStructsInterface1.obj Final_Release/CyTeam.obj Final_Release/CyTeamInterface.obj Final_Release/CyUnit.obj Final_Release/CyUnitInterface1.obj Final_Release/FAssert.obj Final_Release/FDialogTemplate.obj Final_Release/_precompile.obj 
Final_Release_LINKOBJS=$(Final_Release_OBJS)

### The targets of this project
Debug_BIN=Debug/CvGameCoreDLL_DEBUG.dll
Debug_STATIC_LIB=Debug/CvGameCoreDLL_DEBUG.lib
Debug_LIB_DEF=Debug/CvGameCoreDLL_DEBUG.def
Release_BIN=Release/CvGameCoreDLL_RELEASE.dll
Release_STATIC_LIB=Release/CvGameCoreDLL_RELEASE.lib
Release_LIB_DEF=Release/CvGameCoreDLL_RELEASE.def
Release_FxsMemory_BIN=Release_FxsMemory/CvGameCoreDLL_RELEASE_MEM.dll
Release_FxsMemory_STATIC_LIB=Release_FxsMemory/CvGameCoreDLL_RELEASE_MEM.lib
Release_FxsMemory_LIB_DEF=Release_FxsMemory/CvGameCoreDLL_RELEASE_MEM.def
Debug_FxsMemory_BIN=Debug_FxsMemory/CvGameCoreDLL_DEBUG_MEM.dll
Debug_FxsMemory_STATIC_LIB=Debug_FxsMemory/CvGameCoreDLL_DEBUG_MEM.lib
Debug_FxsMemory_LIB_DEF=Debug_FxsMemory/CvGameCoreDLL_DEBUG_MEM.def
Final_Release_BIN=Final_Release/CvGameCoreDLL.dll
Final_Release_STATIC_LIB=Final_Release/CvGameCoreDLL.lib
Final_Release_LIB_DEF=Final_Release/CvGameCoreDLL.def

.PHONY: all all-before all-custom all-after clean clean-custom distclean distclean-custom depend_Debug Debug-before Debug-after depend_Release Release-before Release-after depend_Release_FxsMemory Release_FxsMemory-before Release_FxsMemory-after depend_Debug_FxsMemory Debug_FxsMemory-before Debug_FxsMemory-after depend_Final_Release Final_Release-before Final_Release-after 

all-before:
all-custom:
all-after:
clean-custom:
distclean-custom:
depend_Debug:
Debug-before:
Debug-after:
depend_Release:
Release-before:
Release-after:
depend_Release_FxsMemory:
Release_FxsMemory-before:
Release_FxsMemory-after:
depend_Debug_FxsMemory:
Debug_FxsMemory-before:
Debug_FxsMemory-after:
depend_Final_Release:
Final_Release-before:
Final_Release-after:

all: all-before Debug Release Release_FxsMemory Debug_FxsMemory Final_Release all-after


dist:
	@zip CvGameCoreDLL.cbp.zip CvGameCoreDLL.cbp Makefile CvArea.cpp CvArea.h CvArtFileMgr.cpp CvArtFileMgr.h CvCity.cpp CvCity.h CvCityAI.cpp CvCityAI.h CvDLLButtonPopup.cpp CvDLLButtonPopup.h CvDLLDataStreamIFaceBase.h CvDLLEngineIFaceBase.h CvDLLEntity.cpp CvDLLEntity.h CvDLLEntityIFaceBase.h CvDLLEventReporterIFaceBase.h CvDLLFAStarIFaceBase.h CvDLLFlagEntityIFaceBase.h CvDLLIniParserIFaceBase.h CvDLLInterfaceIFaceBase.h CvDLLPlotBuilderIFaceBase.h CvDLLPython.cpp CvDLLPythonIFaceBase.h CvDLLSymbolIFaceBase.h CvDLLUtilityIFaceBase.h CvDLLWidgetData.cpp CvDLLWidgetData.h CvDLLXMLIFaceBase.h CvDeal.cpp CvDeal.h CvDefines.h CvDiploParameters.cpp CvDiploParameters.h CvEnums.h CvFractal.cpp CvFractal.h CvGame.cpp CvGame.h CvGameAI.cpp CvGameAI.h CvGameCoreDLL.cpp CvGameCoreDLL.h CvGameCoreDLLDefNew.h CvGameCoreDLLUndefNew.h CvGameCoreUtils.cpp CvGameCoreUtils.h CvGameTextMgr.cpp CvGameTextMgr.h CvGlobals.cpp CvGlobals.h CvHallOfFameInfo.cpp CvHallOfFameInfo.h CvInfoWater.cpp CvInfoWater.h CvInfos.cpp CvInfos.h CvInitCore.cpp CvInitCore.h CvMap.cpp CvMap.h CvMapGenerator.cpp CvMapGenerator.h CvPlayer.cpp CvPlayer.h CvPlayerAI.cpp CvPlayerAI.h CvPlot.cpp CvPlot.h CvPlotGroup.cpp CvPlotGroup.h CvPopupInfo.cpp CvPopupInfo.h CvPopupReturn.cpp CvPopupReturn.h CvRandom.cpp CvRandom.h CvReplayInfo.cpp CvReplayInfo.h CvReplayMessage.cpp CvReplayMessage.h CvSelectionGroup.cpp CvSelectionGroup.h CvSelectionGroupAI.cpp CvSelectionGroupAI.h CvString.h CvStructs.cpp CvStructs.h CvTalkingHeadMessage.cpp CvTalkingHeadMessage.h CvTeam.cpp CvTeam.h CvTeamAI.cpp CvTeamAI.h CvUnit.cpp CvUnit.h CvUnitAI.cpp CvUnitAI.h CvXMLLoadUtility.cpp CvXMLLoadUtility.h CvXMLLoadUtilityGet.cpp CvXMLLoadUtilityInit.cpp CvXMLLoadUtilitySet.cpp CyArea.cpp CyArea.h CyAreaInterface.cpp CyArgsList.cpp CyArgsList.h CyArtFileMgr.cpp CyArtFileMgr.h CyArtFileMgrInterface.cpp CyCity.cpp CyCity.h CyCityInterface1.cpp CyDeal.cpp CyDeal.h CyEnumsInterface.cpp CyGame.cpp CyGame.h CyGameCoreUtils.cpp CyGameCoreUtils.h CyGameCoreUtilsInterface.cpp CyGameInterface.cpp CyGameTextMgr.cpp CyGameTextMgr.h CyGameTextMgrInterface.cpp CyGlobalContext.cpp CyGlobalContext.h CyGlobalContextInterface1.cpp CyGlobalContextInterface2.cpp CyGlobalContextInterface3.cpp CyGlobalContextInterface4.cpp CyHallOfFameInfo.cpp CyHallOfFameInfo.h CyHallOfFameInterface.cpp CyInfoInterface1.cpp CyInfoInterface2.cpp CyInfoInterface3.cpp CyMap.cpp CyMap.h CyMapGenerator.cpp CyMapGenerator.h CyMapGeneratorInterface.cpp CyMapInterface.cpp CyPlayer.cpp CyPlayer.h CyPlayerInterface1.cpp CyPlot.cpp CyPlot.h CyPlotInterface1.cpp CyRandomInterface.cpp CyReplayInfo.cpp CyReplayInfo.h CySelectionGroup.cpp CySelectionGroup.h CySelectionGroupInterface.cpp CyStructsInterface1.cpp CyTeam.cpp CyTeam.h CyTeamInterface.cpp CyUnit.cpp CyUnit.h CyUnitInterface1.cpp FAssert.cpp FAssert.h FDialogTemplate.cpp FDialogTemplate.h FProfiler.h LinkedList.h _precompile.cpp 

clean_Debug:
	$(RM) $(Debug_BIN) $(Debug_OBJS) $(Debug_RESOURCE) $(Debug_STATIC_LIB) $(Debug_LIB_DEF) 

distclean_Debug:
	$(RM) $(Debug_BIN) $(Debug_OBJS) $(Debug_DEPS) $(Debug_RESOURCE) $(Debug_STATIC_LIB) $(Debug_LIB_DEF) 

clean_Release:
	$(RM) $(Release_BIN) $(Release_OBJS) $(Release_RESOURCE) $(Release_STATIC_LIB) $(Release_LIB_DEF) 

distclean_Release:
	$(RM) $(Release_BIN) $(Release_OBJS) $(Release_DEPS) $(Release_RESOURCE) $(Release_STATIC_LIB) $(Release_LIB_DEF) 

clean_Release_FxsMemory:
	$(RM) $(Release_FxsMemory_BIN) $(Release_FxsMemory_OBJS) $(Release_FxsMemory_RESOURCE) $(Release_FxsMemory_STATIC_LIB) $(Release_FxsMemory_LIB_DEF) 

distclean_Release_FxsMemory:
	$(RM) $(Release_FxsMemory_BIN) $(Release_FxsMemory_OBJS) $(Release_FxsMemory_DEPS) $(Release_FxsMemory_RESOURCE) $(Release_FxsMemory_STATIC_LIB) $(Release_FxsMemory_LIB_DEF) 

clean_Debug_FxsMemory:
	$(RM) $(Debug_FxsMemory_BIN) $(Debug_FxsMemory_OBJS) $(Debug_FxsMemory_RESOURCE) $(Debug_FxsMemory_STATIC_LIB) $(Debug_FxsMemory_LIB_DEF) 

distclean_Debug_FxsMemory:
	$(RM) $(Debug_FxsMemory_BIN) $(Debug_FxsMemory_OBJS) $(Debug_FxsMemory_DEPS) $(Debug_FxsMemory_RESOURCE) $(Debug_FxsMemory_STATIC_LIB) $(Debug_FxsMemory_LIB_DEF) 

clean_Final_Release:
	$(RM) $(Final_Release_BIN) $(Final_Release_OBJS) $(Final_Release_RESOURCE) $(Final_Release_STATIC_LIB) $(Final_Release_LIB_DEF) 

distclean_Final_Release:
	$(RM) $(Final_Release_BIN) $(Final_Release_OBJS) $(Final_Release_DEPS) $(Final_Release_RESOURCE) $(Final_Release_STATIC_LIB) $(Final_Release_LIB_DEF) 

clean: clean_Debug clean_Release clean_Release_FxsMemory clean_Debug_FxsMemory clean_Final_Release 

distclean: distclean_Debug distclean_Release distclean_Release_FxsMemory distclean_Debug_FxsMemory distclean_Final_Release 

depend:

Debug_DIRS:
	-@if not exist "Debug\." mkdir "Debug"
	-@if not exist "Debug\." mkdir "Debug"

Debug: depend_Debug Debug_DIRS Debug-before $(Debug_BIN) Debug-after

$(Debug_BIN): $(Debug_LINKOBJS) $(Debug_RESOURCE)
	$(Debug_LD) /dll /nologo $(Debug_LIBDIRS) /out:$(Debug_BIN) $(Debug_LIBS) $(Debug_LINKOBJS) $(Debug_RESOURCE) $(Debug_LDFLAGS)

Release_DIRS:
	-@if not exist "Release\." mkdir "Release"
	-@if not exist "Release\." mkdir "Release"

Release: depend_Release Release_DIRS Release-before $(Release_BIN) Release-after

$(Release_BIN): $(Release_LINKOBJS) $(Release_RESOURCE)
	$(Release_LD) /dll /nologo $(Release_LIBDIRS) /out:$(Release_BIN) $(Release_LIBS) $(Release_LINKOBJS) $(Release_RESOURCE) $(Release_LDFLAGS)

Release_FxsMemory_DIRS:
	-@if not exist "Release_FxsMemory\." mkdir "Release_FxsMemory"
	-@if not exist "Release_FxsMemory\." mkdir "Release_FxsMemory"

Release_FxsMemory: depend_Release_FxsMemory Release_FxsMemory_DIRS Release_FxsMemory-before $(Release_FxsMemory_BIN) Release_FxsMemory-after

$(Release_FxsMemory_BIN): $(Release_FxsMemory_LINKOBJS) $(Release_FxsMemory_RESOURCE)
	$(Release_FxsMemory_LD) /dll /nologo $(Release_FxsMemory_LIBDIRS) /out:$(Release_FxsMemory_BIN) $(Release_FxsMemory_LIBS) $(Release_FxsMemory_LINKOBJS) $(Release_FxsMemory_RESOURCE) $(Release_FxsMemory_LDFLAGS)

Debug_FxsMemory_DIRS:
	-@if not exist "Debug_FxsMemory\." mkdir "Debug_FxsMemory"
	-@if not exist "Debug_FxsMemory\." mkdir "Debug_FxsMemory"

Debug_FxsMemory: depend_Debug_FxsMemory Debug_FxsMemory_DIRS Debug_FxsMemory-before $(Debug_FxsMemory_BIN) Debug_FxsMemory-after

$(Debug_FxsMemory_BIN): $(Debug_FxsMemory_LINKOBJS) $(Debug_FxsMemory_RESOURCE)
	$(Debug_FxsMemory_LD) /dll /nologo $(Debug_FxsMemory_LIBDIRS) /out:$(Debug_FxsMemory_BIN) $(Debug_FxsMemory_LIBS) $(Debug_FxsMemory_LINKOBJS) $(Debug_FxsMemory_RESOURCE) $(Debug_FxsMemory_LDFLAGS)

Final_Release_DIRS:
	-@if not exist "Final_Release\." mkdir "Final_Release"
	-@if not exist "Final_Release\." mkdir "Final_Release"

Final_Release: depend_Final_Release Final_Release_DIRS Final_Release-before $(Final_Release_BIN) Final_Release-after

$(Final_Release_BIN): $(Final_Release_LINKOBJS) $(Final_Release_RESOURCE)
	$(Final_Release_LD) /dll /nologo $(Final_Release_LIBDIRS) /out:$(Final_Release_BIN) $(Final_Release_LIBS) $(Final_Release_LINKOBJS) $(Final_Release_RESOURCE) $(Final_Release_LDFLAGS)


Debug/CvArea.obj: CvArea.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvArea.cpp /FoDebug/CvArea.obj

Debug/CvArtFileMgr.obj: CvArtFileMgr.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvArtFileMgr.cpp /FoDebug/CvArtFileMgr.obj

Debug/CvCity.obj: CvCity.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvCity.cpp /FoDebug/CvCity.obj

Debug/CvCityAI.obj: CvCityAI.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvCityAI.cpp /FoDebug/CvCityAI.obj

Debug/CvDLLButtonPopup.obj: CvDLLButtonPopup.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvDLLButtonPopup.cpp /FoDebug/CvDLLButtonPopup.obj

Debug/CvDLLEntity.obj: CvDLLEntity.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvDLLEntity.cpp /FoDebug/CvDLLEntity.obj

Debug/CvDLLPython.obj: CvDLLPython.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvDLLPython.cpp /FoDebug/CvDLLPython.obj

Debug/CvDLLWidgetData.obj: CvDLLWidgetData.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvDLLWidgetData.cpp /FoDebug/CvDLLWidgetData.obj

Debug/CvDeal.obj: CvDeal.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvDeal.cpp /FoDebug/CvDeal.obj

Debug/CvDiploParameters.obj: CvDiploParameters.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvDiploParameters.cpp /FoDebug/CvDiploParameters.obj

Debug/CvFractal.obj: CvFractal.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvFractal.cpp /FoDebug/CvFractal.obj

Debug/CvGame.obj: CvGame.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvGame.cpp /FoDebug/CvGame.obj

Debug/CvGameAI.obj: CvGameAI.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvGameAI.cpp /FoDebug/CvGameAI.obj

Debug/CvGameCoreDLL.obj: CvGameCoreDLL.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvGameCoreDLL.cpp /FoDebug/CvGameCoreDLL.obj

Debug/CvGameCoreUtils.obj: CvGameCoreUtils.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvGameCoreUtils.cpp /FoDebug/CvGameCoreUtils.obj

Debug/CvGameTextMgr.obj: CvGameTextMgr.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvGameTextMgr.cpp /FoDebug/CvGameTextMgr.obj

Debug/CvGlobals.obj: CvGlobals.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvGlobals.cpp /FoDebug/CvGlobals.obj

Debug/CvHallOfFameInfo.obj: CvHallOfFameInfo.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvHallOfFameInfo.cpp /FoDebug/CvHallOfFameInfo.obj

Debug/CvInfoWater.obj: CvInfoWater.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvInfoWater.cpp /FoDebug/CvInfoWater.obj

Debug/CvInfos.obj: CvInfos.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvInfos.cpp /FoDebug/CvInfos.obj

Debug/CvInitCore.obj: CvInitCore.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvInitCore.cpp /FoDebug/CvInitCore.obj

Debug/CvMap.obj: CvMap.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvMap.cpp /FoDebug/CvMap.obj

Debug/CvMapGenerator.obj: CvMapGenerator.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvMapGenerator.cpp /FoDebug/CvMapGenerator.obj

Debug/CvPlayer.obj: CvPlayer.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvPlayer.cpp /FoDebug/CvPlayer.obj

Debug/CvPlayerAI.obj: CvPlayerAI.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvPlayerAI.cpp /FoDebug/CvPlayerAI.obj

Debug/CvPlot.obj: CvPlot.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvPlot.cpp /FoDebug/CvPlot.obj

Debug/CvPlotGroup.obj: CvPlotGroup.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvPlotGroup.cpp /FoDebug/CvPlotGroup.obj

Debug/CvPopupInfo.obj: CvPopupInfo.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvPopupInfo.cpp /FoDebug/CvPopupInfo.obj

Debug/CvPopupReturn.obj: CvPopupReturn.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvPopupReturn.cpp /FoDebug/CvPopupReturn.obj

Debug/CvRandom.obj: CvRandom.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvRandom.cpp /FoDebug/CvRandom.obj

Debug/CvReplayInfo.obj: CvReplayInfo.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvReplayInfo.cpp /FoDebug/CvReplayInfo.obj

Debug/CvReplayMessage.obj: CvReplayMessage.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvReplayMessage.cpp /FoDebug/CvReplayMessage.obj

Debug/CvSelectionGroup.obj: CvSelectionGroup.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvSelectionGroup.cpp /FoDebug/CvSelectionGroup.obj

Debug/CvSelectionGroupAI.obj: CvSelectionGroupAI.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvSelectionGroupAI.cpp /FoDebug/CvSelectionGroupAI.obj

Debug/CvStructs.obj: CvStructs.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvStructs.cpp /FoDebug/CvStructs.obj

Debug/CvTalkingHeadMessage.obj: CvTalkingHeadMessage.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvTalkingHeadMessage.cpp /FoDebug/CvTalkingHeadMessage.obj

Debug/CvTeam.obj: CvTeam.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvTeam.cpp /FoDebug/CvTeam.obj

Debug/CvTeamAI.obj: CvTeamAI.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvTeamAI.cpp /FoDebug/CvTeamAI.obj

Debug/CvUnit.obj: CvUnit.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvUnit.cpp /FoDebug/CvUnit.obj

Debug/CvUnitAI.obj: CvUnitAI.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvUnitAI.cpp /FoDebug/CvUnitAI.obj

Debug/CvXMLLoadUtility.obj: CvXMLLoadUtility.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvXMLLoadUtility.cpp /FoDebug/CvXMLLoadUtility.obj

Debug/CvXMLLoadUtilityGet.obj: CvXMLLoadUtilityGet.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvXMLLoadUtilityGet.cpp /FoDebug/CvXMLLoadUtilityGet.obj

Debug/CvXMLLoadUtilityInit.obj: CvXMLLoadUtilityInit.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvXMLLoadUtilityInit.cpp /FoDebug/CvXMLLoadUtilityInit.obj

Debug/CvXMLLoadUtilitySet.obj: CvXMLLoadUtilitySet.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CvXMLLoadUtilitySet.cpp /FoDebug/CvXMLLoadUtilitySet.obj

Debug/CyArea.obj: CyArea.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyArea.cpp /FoDebug/CyArea.obj

Debug/CyAreaInterface.obj: CyAreaInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyAreaInterface.cpp /FoDebug/CyAreaInterface.obj

Debug/CyArgsList.obj: CyArgsList.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyArgsList.cpp /FoDebug/CyArgsList.obj

Debug/CyArtFileMgr.obj: CyArtFileMgr.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyArtFileMgr.cpp /FoDebug/CyArtFileMgr.obj

Debug/CyArtFileMgrInterface.obj: CyArtFileMgrInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyArtFileMgrInterface.cpp /FoDebug/CyArtFileMgrInterface.obj

Debug/CyCity.obj: CyCity.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyCity.cpp /FoDebug/CyCity.obj

Debug/CyCityInterface1.obj: CyCityInterface1.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyCityInterface1.cpp /FoDebug/CyCityInterface1.obj

Debug/CyDeal.obj: CyDeal.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyDeal.cpp /FoDebug/CyDeal.obj

Debug/CyEnumsInterface.obj: CyEnumsInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyEnumsInterface.cpp /FoDebug/CyEnumsInterface.obj

Debug/CyGame.obj: CyGame.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGame.cpp /FoDebug/CyGame.obj

Debug/CyGameCoreUtils.obj: CyGameCoreUtils.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGameCoreUtils.cpp /FoDebug/CyGameCoreUtils.obj

Debug/CyGameCoreUtilsInterface.obj: CyGameCoreUtilsInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGameCoreUtilsInterface.cpp /FoDebug/CyGameCoreUtilsInterface.obj

Debug/CyGameInterface.obj: CyGameInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGameInterface.cpp /FoDebug/CyGameInterface.obj

Debug/CyGameTextMgr.obj: CyGameTextMgr.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGameTextMgr.cpp /FoDebug/CyGameTextMgr.obj

Debug/CyGameTextMgrInterface.obj: CyGameTextMgrInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGameTextMgrInterface.cpp /FoDebug/CyGameTextMgrInterface.obj

Debug/CyGlobalContext.obj: CyGlobalContext.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGlobalContext.cpp /FoDebug/CyGlobalContext.obj

Debug/CyGlobalContextInterface1.obj: CyGlobalContextInterface1.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGlobalContextInterface1.cpp /FoDebug/CyGlobalContextInterface1.obj

Debug/CyGlobalContextInterface2.obj: CyGlobalContextInterface2.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGlobalContextInterface2.cpp /FoDebug/CyGlobalContextInterface2.obj

Debug/CyGlobalContextInterface3.obj: CyGlobalContextInterface3.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGlobalContextInterface3.cpp /FoDebug/CyGlobalContextInterface3.obj

Debug/CyGlobalContextInterface4.obj: CyGlobalContextInterface4.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyGlobalContextInterface4.cpp /FoDebug/CyGlobalContextInterface4.obj

Debug/CyHallOfFameInfo.obj: CyHallOfFameInfo.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyHallOfFameInfo.cpp /FoDebug/CyHallOfFameInfo.obj

Debug/CyHallOfFameInterface.obj: CyHallOfFameInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyHallOfFameInterface.cpp /FoDebug/CyHallOfFameInterface.obj

Debug/CyInfoInterface1.obj: CyInfoInterface1.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyInfoInterface1.cpp /FoDebug/CyInfoInterface1.obj

Debug/CyInfoInterface2.obj: CyInfoInterface2.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyInfoInterface2.cpp /FoDebug/CyInfoInterface2.obj

Debug/CyInfoInterface3.obj: CyInfoInterface3.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyInfoInterface3.cpp /FoDebug/CyInfoInterface3.obj

Debug/CyMap.obj: CyMap.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyMap.cpp /FoDebug/CyMap.obj

Debug/CyMapGenerator.obj: CyMapGenerator.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyMapGenerator.cpp /FoDebug/CyMapGenerator.obj

Debug/CyMapGeneratorInterface.obj: CyMapGeneratorInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyMapGeneratorInterface.cpp /FoDebug/CyMapGeneratorInterface.obj

Debug/CyMapInterface.obj: CyMapInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyMapInterface.cpp /FoDebug/CyMapInterface.obj

Debug/CyPlayer.obj: CyPlayer.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyPlayer.cpp /FoDebug/CyPlayer.obj

Debug/CyPlayerInterface1.obj: CyPlayerInterface1.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyPlayerInterface1.cpp /FoDebug/CyPlayerInterface1.obj

Debug/CyPlot.obj: CyPlot.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyPlot.cpp /FoDebug/CyPlot.obj

Debug/CyPlotInterface1.obj: CyPlotInterface1.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyPlotInterface1.cpp /FoDebug/CyPlotInterface1.obj

Debug/CyRandomInterface.obj: CyRandomInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyRandomInterface.cpp /FoDebug/CyRandomInterface.obj

Debug/CyReplayInfo.obj: CyReplayInfo.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyReplayInfo.cpp /FoDebug/CyReplayInfo.obj

Debug/CySelectionGroup.obj: CySelectionGroup.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CySelectionGroup.cpp /FoDebug/CySelectionGroup.obj

Debug/CySelectionGroupInterface.obj: CySelectionGroupInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CySelectionGroupInterface.cpp /FoDebug/CySelectionGroupInterface.obj

Debug/CyStructsInterface1.obj: CyStructsInterface1.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyStructsInterface1.cpp /FoDebug/CyStructsInterface1.obj

Debug/CyTeam.obj: CyTeam.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyTeam.cpp /FoDebug/CyTeam.obj

Debug/CyTeamInterface.obj: CyTeamInterface.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyTeamInterface.cpp /FoDebug/CyTeamInterface.obj

Debug/CyUnit.obj: CyUnit.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyUnit.cpp /FoDebug/CyUnit.obj

Debug/CyUnitInterface1.obj: CyUnitInterface1.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c CyUnitInterface1.cpp /FoDebug/CyUnitInterface1.obj

Debug/FAssert.obj: FAssert.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c FAssert.cpp /FoDebug/FAssert.obj

Debug/FDialogTemplate.obj: FDialogTemplate.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c FDialogTemplate.cpp /FoDebug/FDialogTemplate.obj

Debug/_precompile.obj: _precompile.cpp
	$(Debug_CPP) /nologo $(Debug_CFLAGS) $(Debug_INCS) /c _precompile.cpp /FoDebug/_precompile.obj


Release/CvArea.obj: CvArea.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvArea.cpp /FoRelease/CvArea.obj

Release/CvArtFileMgr.obj: CvArtFileMgr.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvArtFileMgr.cpp /FoRelease/CvArtFileMgr.obj

Release/CvCity.obj: CvCity.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvCity.cpp /FoRelease/CvCity.obj

Release/CvCityAI.obj: CvCityAI.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvCityAI.cpp /FoRelease/CvCityAI.obj

Release/CvDLLButtonPopup.obj: CvDLLButtonPopup.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvDLLButtonPopup.cpp /FoRelease/CvDLLButtonPopup.obj

Release/CvDLLEntity.obj: CvDLLEntity.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvDLLEntity.cpp /FoRelease/CvDLLEntity.obj

Release/CvDLLPython.obj: CvDLLPython.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvDLLPython.cpp /FoRelease/CvDLLPython.obj

Release/CvDLLWidgetData.obj: CvDLLWidgetData.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvDLLWidgetData.cpp /FoRelease/CvDLLWidgetData.obj

Release/CvDeal.obj: CvDeal.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvDeal.cpp /FoRelease/CvDeal.obj

Release/CvDiploParameters.obj: CvDiploParameters.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvDiploParameters.cpp /FoRelease/CvDiploParameters.obj

Release/CvFractal.obj: CvFractal.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvFractal.cpp /FoRelease/CvFractal.obj

Release/CvGame.obj: CvGame.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvGame.cpp /FoRelease/CvGame.obj

Release/CvGameAI.obj: CvGameAI.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvGameAI.cpp /FoRelease/CvGameAI.obj

Release/CvGameCoreDLL.obj: CvGameCoreDLL.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvGameCoreDLL.cpp /FoRelease/CvGameCoreDLL.obj

Release/CvGameCoreUtils.obj: CvGameCoreUtils.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvGameCoreUtils.cpp /FoRelease/CvGameCoreUtils.obj

Release/CvGameTextMgr.obj: CvGameTextMgr.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvGameTextMgr.cpp /FoRelease/CvGameTextMgr.obj

Release/CvGlobals.obj: CvGlobals.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvGlobals.cpp /FoRelease/CvGlobals.obj

Release/CvHallOfFameInfo.obj: CvHallOfFameInfo.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvHallOfFameInfo.cpp /FoRelease/CvHallOfFameInfo.obj

Release/CvInfoWater.obj: CvInfoWater.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvInfoWater.cpp /FoRelease/CvInfoWater.obj

Release/CvInfos.obj: CvInfos.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvInfos.cpp /FoRelease/CvInfos.obj

Release/CvInitCore.obj: CvInitCore.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvInitCore.cpp /FoRelease/CvInitCore.obj

Release/CvMap.obj: CvMap.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvMap.cpp /FoRelease/CvMap.obj

Release/CvMapGenerator.obj: CvMapGenerator.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvMapGenerator.cpp /FoRelease/CvMapGenerator.obj

Release/CvPlayer.obj: CvPlayer.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvPlayer.cpp /FoRelease/CvPlayer.obj

Release/CvPlayerAI.obj: CvPlayerAI.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvPlayerAI.cpp /FoRelease/CvPlayerAI.obj

Release/CvPlot.obj: CvPlot.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvPlot.cpp /FoRelease/CvPlot.obj

Release/CvPlotGroup.obj: CvPlotGroup.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvPlotGroup.cpp /FoRelease/CvPlotGroup.obj

Release/CvPopupInfo.obj: CvPopupInfo.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvPopupInfo.cpp /FoRelease/CvPopupInfo.obj

Release/CvPopupReturn.obj: CvPopupReturn.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvPopupReturn.cpp /FoRelease/CvPopupReturn.obj

Release/CvRandom.obj: CvRandom.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvRandom.cpp /FoRelease/CvRandom.obj

Release/CvReplayInfo.obj: CvReplayInfo.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvReplayInfo.cpp /FoRelease/CvReplayInfo.obj

Release/CvReplayMessage.obj: CvReplayMessage.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvReplayMessage.cpp /FoRelease/CvReplayMessage.obj

Release/CvSelectionGroup.obj: CvSelectionGroup.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvSelectionGroup.cpp /FoRelease/CvSelectionGroup.obj

Release/CvSelectionGroupAI.obj: CvSelectionGroupAI.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvSelectionGroupAI.cpp /FoRelease/CvSelectionGroupAI.obj

Release/CvStructs.obj: CvStructs.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvStructs.cpp /FoRelease/CvStructs.obj

Release/CvTalkingHeadMessage.obj: CvTalkingHeadMessage.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvTalkingHeadMessage.cpp /FoRelease/CvTalkingHeadMessage.obj

Release/CvTeam.obj: CvTeam.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvTeam.cpp /FoRelease/CvTeam.obj

Release/CvTeamAI.obj: CvTeamAI.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvTeamAI.cpp /FoRelease/CvTeamAI.obj

Release/CvUnit.obj: CvUnit.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvUnit.cpp /FoRelease/CvUnit.obj

Release/CvUnitAI.obj: CvUnitAI.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvUnitAI.cpp /FoRelease/CvUnitAI.obj

Release/CvXMLLoadUtility.obj: CvXMLLoadUtility.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvXMLLoadUtility.cpp /FoRelease/CvXMLLoadUtility.obj

Release/CvXMLLoadUtilityGet.obj: CvXMLLoadUtilityGet.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvXMLLoadUtilityGet.cpp /FoRelease/CvXMLLoadUtilityGet.obj

Release/CvXMLLoadUtilityInit.obj: CvXMLLoadUtilityInit.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvXMLLoadUtilityInit.cpp /FoRelease/CvXMLLoadUtilityInit.obj

Release/CvXMLLoadUtilitySet.obj: CvXMLLoadUtilitySet.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CvXMLLoadUtilitySet.cpp /FoRelease/CvXMLLoadUtilitySet.obj

Release/CyArea.obj: CyArea.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyArea.cpp /FoRelease/CyArea.obj

Release/CyAreaInterface.obj: CyAreaInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyAreaInterface.cpp /FoRelease/CyAreaInterface.obj

Release/CyArgsList.obj: CyArgsList.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyArgsList.cpp /FoRelease/CyArgsList.obj

Release/CyArtFileMgr.obj: CyArtFileMgr.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyArtFileMgr.cpp /FoRelease/CyArtFileMgr.obj

Release/CyArtFileMgrInterface.obj: CyArtFileMgrInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyArtFileMgrInterface.cpp /FoRelease/CyArtFileMgrInterface.obj

Release/CyCity.obj: CyCity.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyCity.cpp /FoRelease/CyCity.obj

Release/CyCityInterface1.obj: CyCityInterface1.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyCityInterface1.cpp /FoRelease/CyCityInterface1.obj

Release/CyDeal.obj: CyDeal.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyDeal.cpp /FoRelease/CyDeal.obj

Release/CyEnumsInterface.obj: CyEnumsInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyEnumsInterface.cpp /FoRelease/CyEnumsInterface.obj

Release/CyGame.obj: CyGame.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGame.cpp /FoRelease/CyGame.obj

Release/CyGameCoreUtils.obj: CyGameCoreUtils.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGameCoreUtils.cpp /FoRelease/CyGameCoreUtils.obj

Release/CyGameCoreUtilsInterface.obj: CyGameCoreUtilsInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGameCoreUtilsInterface.cpp /FoRelease/CyGameCoreUtilsInterface.obj

Release/CyGameInterface.obj: CyGameInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGameInterface.cpp /FoRelease/CyGameInterface.obj

Release/CyGameTextMgr.obj: CyGameTextMgr.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGameTextMgr.cpp /FoRelease/CyGameTextMgr.obj

Release/CyGameTextMgrInterface.obj: CyGameTextMgrInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGameTextMgrInterface.cpp /FoRelease/CyGameTextMgrInterface.obj

Release/CyGlobalContext.obj: CyGlobalContext.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGlobalContext.cpp /FoRelease/CyGlobalContext.obj

Release/CyGlobalContextInterface1.obj: CyGlobalContextInterface1.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGlobalContextInterface1.cpp /FoRelease/CyGlobalContextInterface1.obj

Release/CyGlobalContextInterface2.obj: CyGlobalContextInterface2.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGlobalContextInterface2.cpp /FoRelease/CyGlobalContextInterface2.obj

Release/CyGlobalContextInterface3.obj: CyGlobalContextInterface3.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGlobalContextInterface3.cpp /FoRelease/CyGlobalContextInterface3.obj

Release/CyGlobalContextInterface4.obj: CyGlobalContextInterface4.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyGlobalContextInterface4.cpp /FoRelease/CyGlobalContextInterface4.obj

Release/CyHallOfFameInfo.obj: CyHallOfFameInfo.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyHallOfFameInfo.cpp /FoRelease/CyHallOfFameInfo.obj

Release/CyHallOfFameInterface.obj: CyHallOfFameInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyHallOfFameInterface.cpp /FoRelease/CyHallOfFameInterface.obj

Release/CyInfoInterface1.obj: CyInfoInterface1.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyInfoInterface1.cpp /FoRelease/CyInfoInterface1.obj

Release/CyInfoInterface2.obj: CyInfoInterface2.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyInfoInterface2.cpp /FoRelease/CyInfoInterface2.obj

Release/CyInfoInterface3.obj: CyInfoInterface3.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyInfoInterface3.cpp /FoRelease/CyInfoInterface3.obj

Release/CyMap.obj: CyMap.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyMap.cpp /FoRelease/CyMap.obj

Release/CyMapGenerator.obj: CyMapGenerator.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyMapGenerator.cpp /FoRelease/CyMapGenerator.obj

Release/CyMapGeneratorInterface.obj: CyMapGeneratorInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyMapGeneratorInterface.cpp /FoRelease/CyMapGeneratorInterface.obj

Release/CyMapInterface.obj: CyMapInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyMapInterface.cpp /FoRelease/CyMapInterface.obj

Release/CyPlayer.obj: CyPlayer.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyPlayer.cpp /FoRelease/CyPlayer.obj

Release/CyPlayerInterface1.obj: CyPlayerInterface1.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyPlayerInterface1.cpp /FoRelease/CyPlayerInterface1.obj

Release/CyPlot.obj: CyPlot.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyPlot.cpp /FoRelease/CyPlot.obj

Release/CyPlotInterface1.obj: CyPlotInterface1.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyPlotInterface1.cpp /FoRelease/CyPlotInterface1.obj

Release/CyRandomInterface.obj: CyRandomInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyRandomInterface.cpp /FoRelease/CyRandomInterface.obj

Release/CyReplayInfo.obj: CyReplayInfo.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyReplayInfo.cpp /FoRelease/CyReplayInfo.obj

Release/CySelectionGroup.obj: CySelectionGroup.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CySelectionGroup.cpp /FoRelease/CySelectionGroup.obj

Release/CySelectionGroupInterface.obj: CySelectionGroupInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CySelectionGroupInterface.cpp /FoRelease/CySelectionGroupInterface.obj

Release/CyStructsInterface1.obj: CyStructsInterface1.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyStructsInterface1.cpp /FoRelease/CyStructsInterface1.obj

Release/CyTeam.obj: CyTeam.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyTeam.cpp /FoRelease/CyTeam.obj

Release/CyTeamInterface.obj: CyTeamInterface.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyTeamInterface.cpp /FoRelease/CyTeamInterface.obj

Release/CyUnit.obj: CyUnit.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyUnit.cpp /FoRelease/CyUnit.obj

Release/CyUnitInterface1.obj: CyUnitInterface1.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c CyUnitInterface1.cpp /FoRelease/CyUnitInterface1.obj

Release/FAssert.obj: FAssert.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c FAssert.cpp /FoRelease/FAssert.obj

Release/FDialogTemplate.obj: FDialogTemplate.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c FDialogTemplate.cpp /FoRelease/FDialogTemplate.obj

Release/_precompile.obj: _precompile.cpp
	$(Release_CPP) /nologo $(Release_CFLAGS) $(Release_INCS) /c _precompile.cpp /FoRelease/_precompile.obj


Release_FxsMemory/CvArea.obj: CvArea.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvArea.cpp /FoRelease_FxsMemory/CvArea.obj

Release_FxsMemory/CvArtFileMgr.obj: CvArtFileMgr.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvArtFileMgr.cpp /FoRelease_FxsMemory/CvArtFileMgr.obj

Release_FxsMemory/CvCity.obj: CvCity.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvCity.cpp /FoRelease_FxsMemory/CvCity.obj

Release_FxsMemory/CvCityAI.obj: CvCityAI.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvCityAI.cpp /FoRelease_FxsMemory/CvCityAI.obj

Release_FxsMemory/CvDLLButtonPopup.obj: CvDLLButtonPopup.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvDLLButtonPopup.cpp /FoRelease_FxsMemory/CvDLLButtonPopup.obj

Release_FxsMemory/CvDLLEntity.obj: CvDLLEntity.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvDLLEntity.cpp /FoRelease_FxsMemory/CvDLLEntity.obj

Release_FxsMemory/CvDLLPython.obj: CvDLLPython.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvDLLPython.cpp /FoRelease_FxsMemory/CvDLLPython.obj

Release_FxsMemory/CvDLLWidgetData.obj: CvDLLWidgetData.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvDLLWidgetData.cpp /FoRelease_FxsMemory/CvDLLWidgetData.obj

Release_FxsMemory/CvDeal.obj: CvDeal.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvDeal.cpp /FoRelease_FxsMemory/CvDeal.obj

Release_FxsMemory/CvDiploParameters.obj: CvDiploParameters.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvDiploParameters.cpp /FoRelease_FxsMemory/CvDiploParameters.obj

Release_FxsMemory/CvFractal.obj: CvFractal.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvFractal.cpp /FoRelease_FxsMemory/CvFractal.obj

Release_FxsMemory/CvGame.obj: CvGame.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvGame.cpp /FoRelease_FxsMemory/CvGame.obj

Release_FxsMemory/CvGameAI.obj: CvGameAI.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvGameAI.cpp /FoRelease_FxsMemory/CvGameAI.obj

Release_FxsMemory/CvGameCoreDLL.obj: CvGameCoreDLL.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvGameCoreDLL.cpp /FoRelease_FxsMemory/CvGameCoreDLL.obj

Release_FxsMemory/CvGameCoreUtils.obj: CvGameCoreUtils.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvGameCoreUtils.cpp /FoRelease_FxsMemory/CvGameCoreUtils.obj

Release_FxsMemory/CvGameTextMgr.obj: CvGameTextMgr.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvGameTextMgr.cpp /FoRelease_FxsMemory/CvGameTextMgr.obj

Release_FxsMemory/CvGlobals.obj: CvGlobals.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvGlobals.cpp /FoRelease_FxsMemory/CvGlobals.obj

Release_FxsMemory/CvHallOfFameInfo.obj: CvHallOfFameInfo.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvHallOfFameInfo.cpp /FoRelease_FxsMemory/CvHallOfFameInfo.obj

Release_FxsMemory/CvInfoWater.obj: CvInfoWater.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvInfoWater.cpp /FoRelease_FxsMemory/CvInfoWater.obj

Release_FxsMemory/CvInfos.obj: CvInfos.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvInfos.cpp /FoRelease_FxsMemory/CvInfos.obj

Release_FxsMemory/CvInitCore.obj: CvInitCore.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvInitCore.cpp /FoRelease_FxsMemory/CvInitCore.obj

Release_FxsMemory/CvMap.obj: CvMap.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvMap.cpp /FoRelease_FxsMemory/CvMap.obj

Release_FxsMemory/CvMapGenerator.obj: CvMapGenerator.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvMapGenerator.cpp /FoRelease_FxsMemory/CvMapGenerator.obj

Release_FxsMemory/CvPlayer.obj: CvPlayer.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvPlayer.cpp /FoRelease_FxsMemory/CvPlayer.obj

Release_FxsMemory/CvPlayerAI.obj: CvPlayerAI.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvPlayerAI.cpp /FoRelease_FxsMemory/CvPlayerAI.obj

Release_FxsMemory/CvPlot.obj: CvPlot.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvPlot.cpp /FoRelease_FxsMemory/CvPlot.obj

Release_FxsMemory/CvPlotGroup.obj: CvPlotGroup.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvPlotGroup.cpp /FoRelease_FxsMemory/CvPlotGroup.obj

Release_FxsMemory/CvPopupInfo.obj: CvPopupInfo.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvPopupInfo.cpp /FoRelease_FxsMemory/CvPopupInfo.obj

Release_FxsMemory/CvPopupReturn.obj: CvPopupReturn.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvPopupReturn.cpp /FoRelease_FxsMemory/CvPopupReturn.obj

Release_FxsMemory/CvRandom.obj: CvRandom.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvRandom.cpp /FoRelease_FxsMemory/CvRandom.obj

Release_FxsMemory/CvReplayInfo.obj: CvReplayInfo.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvReplayInfo.cpp /FoRelease_FxsMemory/CvReplayInfo.obj

Release_FxsMemory/CvReplayMessage.obj: CvReplayMessage.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvReplayMessage.cpp /FoRelease_FxsMemory/CvReplayMessage.obj

Release_FxsMemory/CvSelectionGroup.obj: CvSelectionGroup.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvSelectionGroup.cpp /FoRelease_FxsMemory/CvSelectionGroup.obj

Release_FxsMemory/CvSelectionGroupAI.obj: CvSelectionGroupAI.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvSelectionGroupAI.cpp /FoRelease_FxsMemory/CvSelectionGroupAI.obj

Release_FxsMemory/CvStructs.obj: CvStructs.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvStructs.cpp /FoRelease_FxsMemory/CvStructs.obj

Release_FxsMemory/CvTalkingHeadMessage.obj: CvTalkingHeadMessage.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvTalkingHeadMessage.cpp /FoRelease_FxsMemory/CvTalkingHeadMessage.obj

Release_FxsMemory/CvTeam.obj: CvTeam.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvTeam.cpp /FoRelease_FxsMemory/CvTeam.obj

Release_FxsMemory/CvTeamAI.obj: CvTeamAI.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvTeamAI.cpp /FoRelease_FxsMemory/CvTeamAI.obj

Release_FxsMemory/CvUnit.obj: CvUnit.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvUnit.cpp /FoRelease_FxsMemory/CvUnit.obj

Release_FxsMemory/CvUnitAI.obj: CvUnitAI.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvUnitAI.cpp /FoRelease_FxsMemory/CvUnitAI.obj

Release_FxsMemory/CvXMLLoadUtility.obj: CvXMLLoadUtility.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvXMLLoadUtility.cpp /FoRelease_FxsMemory/CvXMLLoadUtility.obj

Release_FxsMemory/CvXMLLoadUtilityGet.obj: CvXMLLoadUtilityGet.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvXMLLoadUtilityGet.cpp /FoRelease_FxsMemory/CvXMLLoadUtilityGet.obj

Release_FxsMemory/CvXMLLoadUtilityInit.obj: CvXMLLoadUtilityInit.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvXMLLoadUtilityInit.cpp /FoRelease_FxsMemory/CvXMLLoadUtilityInit.obj

Release_FxsMemory/CvXMLLoadUtilitySet.obj: CvXMLLoadUtilitySet.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CvXMLLoadUtilitySet.cpp /FoRelease_FxsMemory/CvXMLLoadUtilitySet.obj

Release_FxsMemory/CyArea.obj: CyArea.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyArea.cpp /FoRelease_FxsMemory/CyArea.obj

Release_FxsMemory/CyAreaInterface.obj: CyAreaInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyAreaInterface.cpp /FoRelease_FxsMemory/CyAreaInterface.obj

Release_FxsMemory/CyArgsList.obj: CyArgsList.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyArgsList.cpp /FoRelease_FxsMemory/CyArgsList.obj

Release_FxsMemory/CyArtFileMgr.obj: CyArtFileMgr.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyArtFileMgr.cpp /FoRelease_FxsMemory/CyArtFileMgr.obj

Release_FxsMemory/CyArtFileMgrInterface.obj: CyArtFileMgrInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyArtFileMgrInterface.cpp /FoRelease_FxsMemory/CyArtFileMgrInterface.obj

Release_FxsMemory/CyCity.obj: CyCity.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyCity.cpp /FoRelease_FxsMemory/CyCity.obj

Release_FxsMemory/CyCityInterface1.obj: CyCityInterface1.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyCityInterface1.cpp /FoRelease_FxsMemory/CyCityInterface1.obj

Release_FxsMemory/CyDeal.obj: CyDeal.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyDeal.cpp /FoRelease_FxsMemory/CyDeal.obj

Release_FxsMemory/CyEnumsInterface.obj: CyEnumsInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyEnumsInterface.cpp /FoRelease_FxsMemory/CyEnumsInterface.obj

Release_FxsMemory/CyGame.obj: CyGame.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGame.cpp /FoRelease_FxsMemory/CyGame.obj

Release_FxsMemory/CyGameCoreUtils.obj: CyGameCoreUtils.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGameCoreUtils.cpp /FoRelease_FxsMemory/CyGameCoreUtils.obj

Release_FxsMemory/CyGameCoreUtilsInterface.obj: CyGameCoreUtilsInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGameCoreUtilsInterface.cpp /FoRelease_FxsMemory/CyGameCoreUtilsInterface.obj

Release_FxsMemory/CyGameInterface.obj: CyGameInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGameInterface.cpp /FoRelease_FxsMemory/CyGameInterface.obj

Release_FxsMemory/CyGameTextMgr.obj: CyGameTextMgr.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGameTextMgr.cpp /FoRelease_FxsMemory/CyGameTextMgr.obj

Release_FxsMemory/CyGameTextMgrInterface.obj: CyGameTextMgrInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGameTextMgrInterface.cpp /FoRelease_FxsMemory/CyGameTextMgrInterface.obj

Release_FxsMemory/CyGlobalContext.obj: CyGlobalContext.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGlobalContext.cpp /FoRelease_FxsMemory/CyGlobalContext.obj

Release_FxsMemory/CyGlobalContextInterface1.obj: CyGlobalContextInterface1.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGlobalContextInterface1.cpp /FoRelease_FxsMemory/CyGlobalContextInterface1.obj

Release_FxsMemory/CyGlobalContextInterface2.obj: CyGlobalContextInterface2.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGlobalContextInterface2.cpp /FoRelease_FxsMemory/CyGlobalContextInterface2.obj

Release_FxsMemory/CyGlobalContextInterface3.obj: CyGlobalContextInterface3.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGlobalContextInterface3.cpp /FoRelease_FxsMemory/CyGlobalContextInterface3.obj

Release_FxsMemory/CyGlobalContextInterface4.obj: CyGlobalContextInterface4.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyGlobalContextInterface4.cpp /FoRelease_FxsMemory/CyGlobalContextInterface4.obj

Release_FxsMemory/CyHallOfFameInfo.obj: CyHallOfFameInfo.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyHallOfFameInfo.cpp /FoRelease_FxsMemory/CyHallOfFameInfo.obj

Release_FxsMemory/CyHallOfFameInterface.obj: CyHallOfFameInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyHallOfFameInterface.cpp /FoRelease_FxsMemory/CyHallOfFameInterface.obj

Release_FxsMemory/CyInfoInterface1.obj: CyInfoInterface1.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyInfoInterface1.cpp /FoRelease_FxsMemory/CyInfoInterface1.obj

Release_FxsMemory/CyInfoInterface2.obj: CyInfoInterface2.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyInfoInterface2.cpp /FoRelease_FxsMemory/CyInfoInterface2.obj

Release_FxsMemory/CyInfoInterface3.obj: CyInfoInterface3.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyInfoInterface3.cpp /FoRelease_FxsMemory/CyInfoInterface3.obj

Release_FxsMemory/CyMap.obj: CyMap.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyMap.cpp /FoRelease_FxsMemory/CyMap.obj

Release_FxsMemory/CyMapGenerator.obj: CyMapGenerator.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyMapGenerator.cpp /FoRelease_FxsMemory/CyMapGenerator.obj

Release_FxsMemory/CyMapGeneratorInterface.obj: CyMapGeneratorInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyMapGeneratorInterface.cpp /FoRelease_FxsMemory/CyMapGeneratorInterface.obj

Release_FxsMemory/CyMapInterface.obj: CyMapInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyMapInterface.cpp /FoRelease_FxsMemory/CyMapInterface.obj

Release_FxsMemory/CyPlayer.obj: CyPlayer.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyPlayer.cpp /FoRelease_FxsMemory/CyPlayer.obj

Release_FxsMemory/CyPlayerInterface1.obj: CyPlayerInterface1.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyPlayerInterface1.cpp /FoRelease_FxsMemory/CyPlayerInterface1.obj

Release_FxsMemory/CyPlot.obj: CyPlot.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyPlot.cpp /FoRelease_FxsMemory/CyPlot.obj

Release_FxsMemory/CyPlotInterface1.obj: CyPlotInterface1.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyPlotInterface1.cpp /FoRelease_FxsMemory/CyPlotInterface1.obj

Release_FxsMemory/CyRandomInterface.obj: CyRandomInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyRandomInterface.cpp /FoRelease_FxsMemory/CyRandomInterface.obj

Release_FxsMemory/CyReplayInfo.obj: CyReplayInfo.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyReplayInfo.cpp /FoRelease_FxsMemory/CyReplayInfo.obj

Release_FxsMemory/CySelectionGroup.obj: CySelectionGroup.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CySelectionGroup.cpp /FoRelease_FxsMemory/CySelectionGroup.obj

Release_FxsMemory/CySelectionGroupInterface.obj: CySelectionGroupInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CySelectionGroupInterface.cpp /FoRelease_FxsMemory/CySelectionGroupInterface.obj

Release_FxsMemory/CyStructsInterface1.obj: CyStructsInterface1.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyStructsInterface1.cpp /FoRelease_FxsMemory/CyStructsInterface1.obj

Release_FxsMemory/CyTeam.obj: CyTeam.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyTeam.cpp /FoRelease_FxsMemory/CyTeam.obj

Release_FxsMemory/CyTeamInterface.obj: CyTeamInterface.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyTeamInterface.cpp /FoRelease_FxsMemory/CyTeamInterface.obj

Release_FxsMemory/CyUnit.obj: CyUnit.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyUnit.cpp /FoRelease_FxsMemory/CyUnit.obj

Release_FxsMemory/CyUnitInterface1.obj: CyUnitInterface1.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c CyUnitInterface1.cpp /FoRelease_FxsMemory/CyUnitInterface1.obj

Release_FxsMemory/FAssert.obj: FAssert.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c FAssert.cpp /FoRelease_FxsMemory/FAssert.obj

Release_FxsMemory/FDialogTemplate.obj: FDialogTemplate.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c FDialogTemplate.cpp /FoRelease_FxsMemory/FDialogTemplate.obj

Release_FxsMemory/_precompile.obj: _precompile.cpp
	$(Release_FxsMemory_CPP) /nologo $(Release_FxsMemory_CFLAGS) $(Release_FxsMemory_INCS) /c _precompile.cpp /FoRelease_FxsMemory/_precompile.obj


Debug_FxsMemory/CvArea.obj: CvArea.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvArea.cpp /FoDebug_FxsMemory/CvArea.obj

Debug_FxsMemory/CvArtFileMgr.obj: CvArtFileMgr.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvArtFileMgr.cpp /FoDebug_FxsMemory/CvArtFileMgr.obj

Debug_FxsMemory/CvCity.obj: CvCity.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvCity.cpp /FoDebug_FxsMemory/CvCity.obj

Debug_FxsMemory/CvCityAI.obj: CvCityAI.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvCityAI.cpp /FoDebug_FxsMemory/CvCityAI.obj

Debug_FxsMemory/CvDLLButtonPopup.obj: CvDLLButtonPopup.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvDLLButtonPopup.cpp /FoDebug_FxsMemory/CvDLLButtonPopup.obj

Debug_FxsMemory/CvDLLEntity.obj: CvDLLEntity.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvDLLEntity.cpp /FoDebug_FxsMemory/CvDLLEntity.obj

Debug_FxsMemory/CvDLLPython.obj: CvDLLPython.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvDLLPython.cpp /FoDebug_FxsMemory/CvDLLPython.obj

Debug_FxsMemory/CvDLLWidgetData.obj: CvDLLWidgetData.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvDLLWidgetData.cpp /FoDebug_FxsMemory/CvDLLWidgetData.obj

Debug_FxsMemory/CvDeal.obj: CvDeal.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvDeal.cpp /FoDebug_FxsMemory/CvDeal.obj

Debug_FxsMemory/CvDiploParameters.obj: CvDiploParameters.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvDiploParameters.cpp /FoDebug_FxsMemory/CvDiploParameters.obj

Debug_FxsMemory/CvFractal.obj: CvFractal.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvFractal.cpp /FoDebug_FxsMemory/CvFractal.obj

Debug_FxsMemory/CvGame.obj: CvGame.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvGame.cpp /FoDebug_FxsMemory/CvGame.obj

Debug_FxsMemory/CvGameAI.obj: CvGameAI.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvGameAI.cpp /FoDebug_FxsMemory/CvGameAI.obj

Debug_FxsMemory/CvGameCoreDLL.obj: CvGameCoreDLL.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvGameCoreDLL.cpp /FoDebug_FxsMemory/CvGameCoreDLL.obj

Debug_FxsMemory/CvGameCoreUtils.obj: CvGameCoreUtils.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvGameCoreUtils.cpp /FoDebug_FxsMemory/CvGameCoreUtils.obj

Debug_FxsMemory/CvGameTextMgr.obj: CvGameTextMgr.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvGameTextMgr.cpp /FoDebug_FxsMemory/CvGameTextMgr.obj

Debug_FxsMemory/CvGlobals.obj: CvGlobals.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvGlobals.cpp /FoDebug_FxsMemory/CvGlobals.obj

Debug_FxsMemory/CvHallOfFameInfo.obj: CvHallOfFameInfo.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvHallOfFameInfo.cpp /FoDebug_FxsMemory/CvHallOfFameInfo.obj

Debug_FxsMemory/CvInfoWater.obj: CvInfoWater.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvInfoWater.cpp /FoDebug_FxsMemory/CvInfoWater.obj

Debug_FxsMemory/CvInfos.obj: CvInfos.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvInfos.cpp /FoDebug_FxsMemory/CvInfos.obj

Debug_FxsMemory/CvInitCore.obj: CvInitCore.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvInitCore.cpp /FoDebug_FxsMemory/CvInitCore.obj

Debug_FxsMemory/CvMap.obj: CvMap.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvMap.cpp /FoDebug_FxsMemory/CvMap.obj

Debug_FxsMemory/CvMapGenerator.obj: CvMapGenerator.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvMapGenerator.cpp /FoDebug_FxsMemory/CvMapGenerator.obj

Debug_FxsMemory/CvPlayer.obj: CvPlayer.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvPlayer.cpp /FoDebug_FxsMemory/CvPlayer.obj

Debug_FxsMemory/CvPlayerAI.obj: CvPlayerAI.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvPlayerAI.cpp /FoDebug_FxsMemory/CvPlayerAI.obj

Debug_FxsMemory/CvPlot.obj: CvPlot.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvPlot.cpp /FoDebug_FxsMemory/CvPlot.obj

Debug_FxsMemory/CvPlotGroup.obj: CvPlotGroup.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvPlotGroup.cpp /FoDebug_FxsMemory/CvPlotGroup.obj

Debug_FxsMemory/CvPopupInfo.obj: CvPopupInfo.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvPopupInfo.cpp /FoDebug_FxsMemory/CvPopupInfo.obj

Debug_FxsMemory/CvPopupReturn.obj: CvPopupReturn.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvPopupReturn.cpp /FoDebug_FxsMemory/CvPopupReturn.obj

Debug_FxsMemory/CvRandom.obj: CvRandom.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvRandom.cpp /FoDebug_FxsMemory/CvRandom.obj

Debug_FxsMemory/CvReplayInfo.obj: CvReplayInfo.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvReplayInfo.cpp /FoDebug_FxsMemory/CvReplayInfo.obj

Debug_FxsMemory/CvReplayMessage.obj: CvReplayMessage.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvReplayMessage.cpp /FoDebug_FxsMemory/CvReplayMessage.obj

Debug_FxsMemory/CvSelectionGroup.obj: CvSelectionGroup.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvSelectionGroup.cpp /FoDebug_FxsMemory/CvSelectionGroup.obj

Debug_FxsMemory/CvSelectionGroupAI.obj: CvSelectionGroupAI.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvSelectionGroupAI.cpp /FoDebug_FxsMemory/CvSelectionGroupAI.obj

Debug_FxsMemory/CvStructs.obj: CvStructs.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvStructs.cpp /FoDebug_FxsMemory/CvStructs.obj

Debug_FxsMemory/CvTalkingHeadMessage.obj: CvTalkingHeadMessage.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvTalkingHeadMessage.cpp /FoDebug_FxsMemory/CvTalkingHeadMessage.obj

Debug_FxsMemory/CvTeam.obj: CvTeam.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvTeam.cpp /FoDebug_FxsMemory/CvTeam.obj

Debug_FxsMemory/CvTeamAI.obj: CvTeamAI.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvTeamAI.cpp /FoDebug_FxsMemory/CvTeamAI.obj

Debug_FxsMemory/CvUnit.obj: CvUnit.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvUnit.cpp /FoDebug_FxsMemory/CvUnit.obj

Debug_FxsMemory/CvUnitAI.obj: CvUnitAI.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvUnitAI.cpp /FoDebug_FxsMemory/CvUnitAI.obj

Debug_FxsMemory/CvXMLLoadUtility.obj: CvXMLLoadUtility.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvXMLLoadUtility.cpp /FoDebug_FxsMemory/CvXMLLoadUtility.obj

Debug_FxsMemory/CvXMLLoadUtilityGet.obj: CvXMLLoadUtilityGet.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvXMLLoadUtilityGet.cpp /FoDebug_FxsMemory/CvXMLLoadUtilityGet.obj

Debug_FxsMemory/CvXMLLoadUtilityInit.obj: CvXMLLoadUtilityInit.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvXMLLoadUtilityInit.cpp /FoDebug_FxsMemory/CvXMLLoadUtilityInit.obj

Debug_FxsMemory/CvXMLLoadUtilitySet.obj: CvXMLLoadUtilitySet.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CvXMLLoadUtilitySet.cpp /FoDebug_FxsMemory/CvXMLLoadUtilitySet.obj

Debug_FxsMemory/CyArea.obj: CyArea.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyArea.cpp /FoDebug_FxsMemory/CyArea.obj

Debug_FxsMemory/CyAreaInterface.obj: CyAreaInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyAreaInterface.cpp /FoDebug_FxsMemory/CyAreaInterface.obj

Debug_FxsMemory/CyArgsList.obj: CyArgsList.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyArgsList.cpp /FoDebug_FxsMemory/CyArgsList.obj

Debug_FxsMemory/CyArtFileMgr.obj: CyArtFileMgr.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyArtFileMgr.cpp /FoDebug_FxsMemory/CyArtFileMgr.obj

Debug_FxsMemory/CyArtFileMgrInterface.obj: CyArtFileMgrInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyArtFileMgrInterface.cpp /FoDebug_FxsMemory/CyArtFileMgrInterface.obj

Debug_FxsMemory/CyCity.obj: CyCity.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyCity.cpp /FoDebug_FxsMemory/CyCity.obj

Debug_FxsMemory/CyCityInterface1.obj: CyCityInterface1.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyCityInterface1.cpp /FoDebug_FxsMemory/CyCityInterface1.obj

Debug_FxsMemory/CyDeal.obj: CyDeal.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyDeal.cpp /FoDebug_FxsMemory/CyDeal.obj

Debug_FxsMemory/CyEnumsInterface.obj: CyEnumsInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyEnumsInterface.cpp /FoDebug_FxsMemory/CyEnumsInterface.obj

Debug_FxsMemory/CyGame.obj: CyGame.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGame.cpp /FoDebug_FxsMemory/CyGame.obj

Debug_FxsMemory/CyGameCoreUtils.obj: CyGameCoreUtils.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGameCoreUtils.cpp /FoDebug_FxsMemory/CyGameCoreUtils.obj

Debug_FxsMemory/CyGameCoreUtilsInterface.obj: CyGameCoreUtilsInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGameCoreUtilsInterface.cpp /FoDebug_FxsMemory/CyGameCoreUtilsInterface.obj

Debug_FxsMemory/CyGameInterface.obj: CyGameInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGameInterface.cpp /FoDebug_FxsMemory/CyGameInterface.obj

Debug_FxsMemory/CyGameTextMgr.obj: CyGameTextMgr.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGameTextMgr.cpp /FoDebug_FxsMemory/CyGameTextMgr.obj

Debug_FxsMemory/CyGameTextMgrInterface.obj: CyGameTextMgrInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGameTextMgrInterface.cpp /FoDebug_FxsMemory/CyGameTextMgrInterface.obj

Debug_FxsMemory/CyGlobalContext.obj: CyGlobalContext.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGlobalContext.cpp /FoDebug_FxsMemory/CyGlobalContext.obj

Debug_FxsMemory/CyGlobalContextInterface1.obj: CyGlobalContextInterface1.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGlobalContextInterface1.cpp /FoDebug_FxsMemory/CyGlobalContextInterface1.obj

Debug_FxsMemory/CyGlobalContextInterface2.obj: CyGlobalContextInterface2.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGlobalContextInterface2.cpp /FoDebug_FxsMemory/CyGlobalContextInterface2.obj

Debug_FxsMemory/CyGlobalContextInterface3.obj: CyGlobalContextInterface3.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGlobalContextInterface3.cpp /FoDebug_FxsMemory/CyGlobalContextInterface3.obj

Debug_FxsMemory/CyGlobalContextInterface4.obj: CyGlobalContextInterface4.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyGlobalContextInterface4.cpp /FoDebug_FxsMemory/CyGlobalContextInterface4.obj

Debug_FxsMemory/CyHallOfFameInfo.obj: CyHallOfFameInfo.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyHallOfFameInfo.cpp /FoDebug_FxsMemory/CyHallOfFameInfo.obj

Debug_FxsMemory/CyHallOfFameInterface.obj: CyHallOfFameInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyHallOfFameInterface.cpp /FoDebug_FxsMemory/CyHallOfFameInterface.obj

Debug_FxsMemory/CyInfoInterface1.obj: CyInfoInterface1.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyInfoInterface1.cpp /FoDebug_FxsMemory/CyInfoInterface1.obj

Debug_FxsMemory/CyInfoInterface2.obj: CyInfoInterface2.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyInfoInterface2.cpp /FoDebug_FxsMemory/CyInfoInterface2.obj

Debug_FxsMemory/CyInfoInterface3.obj: CyInfoInterface3.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyInfoInterface3.cpp /FoDebug_FxsMemory/CyInfoInterface3.obj

Debug_FxsMemory/CyMap.obj: CyMap.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyMap.cpp /FoDebug_FxsMemory/CyMap.obj

Debug_FxsMemory/CyMapGenerator.obj: CyMapGenerator.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyMapGenerator.cpp /FoDebug_FxsMemory/CyMapGenerator.obj

Debug_FxsMemory/CyMapGeneratorInterface.obj: CyMapGeneratorInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyMapGeneratorInterface.cpp /FoDebug_FxsMemory/CyMapGeneratorInterface.obj

Debug_FxsMemory/CyMapInterface.obj: CyMapInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyMapInterface.cpp /FoDebug_FxsMemory/CyMapInterface.obj

Debug_FxsMemory/CyPlayer.obj: CyPlayer.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyPlayer.cpp /FoDebug_FxsMemory/CyPlayer.obj

Debug_FxsMemory/CyPlayerInterface1.obj: CyPlayerInterface1.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyPlayerInterface1.cpp /FoDebug_FxsMemory/CyPlayerInterface1.obj

Debug_FxsMemory/CyPlot.obj: CyPlot.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyPlot.cpp /FoDebug_FxsMemory/CyPlot.obj

Debug_FxsMemory/CyPlotInterface1.obj: CyPlotInterface1.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyPlotInterface1.cpp /FoDebug_FxsMemory/CyPlotInterface1.obj

Debug_FxsMemory/CyRandomInterface.obj: CyRandomInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyRandomInterface.cpp /FoDebug_FxsMemory/CyRandomInterface.obj

Debug_FxsMemory/CyReplayInfo.obj: CyReplayInfo.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyReplayInfo.cpp /FoDebug_FxsMemory/CyReplayInfo.obj

Debug_FxsMemory/CySelectionGroup.obj: CySelectionGroup.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CySelectionGroup.cpp /FoDebug_FxsMemory/CySelectionGroup.obj

Debug_FxsMemory/CySelectionGroupInterface.obj: CySelectionGroupInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CySelectionGroupInterface.cpp /FoDebug_FxsMemory/CySelectionGroupInterface.obj

Debug_FxsMemory/CyStructsInterface1.obj: CyStructsInterface1.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyStructsInterface1.cpp /FoDebug_FxsMemory/CyStructsInterface1.obj

Debug_FxsMemory/CyTeam.obj: CyTeam.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyTeam.cpp /FoDebug_FxsMemory/CyTeam.obj

Debug_FxsMemory/CyTeamInterface.obj: CyTeamInterface.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyTeamInterface.cpp /FoDebug_FxsMemory/CyTeamInterface.obj

Debug_FxsMemory/CyUnit.obj: CyUnit.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyUnit.cpp /FoDebug_FxsMemory/CyUnit.obj

Debug_FxsMemory/CyUnitInterface1.obj: CyUnitInterface1.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c CyUnitInterface1.cpp /FoDebug_FxsMemory/CyUnitInterface1.obj

Debug_FxsMemory/FAssert.obj: FAssert.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c FAssert.cpp /FoDebug_FxsMemory/FAssert.obj

Debug_FxsMemory/FDialogTemplate.obj: FDialogTemplate.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c FDialogTemplate.cpp /FoDebug_FxsMemory/FDialogTemplate.obj

Debug_FxsMemory/_precompile.obj: _precompile.cpp
	$(Debug_FxsMemory_CPP) /nologo $(Debug_FxsMemory_CFLAGS) $(Debug_FxsMemory_INCS) /c _precompile.cpp /FoDebug_FxsMemory/_precompile.obj


Final_Release/CvArea.obj: CvArea.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvArea.cpp /FoFinal_Release/CvArea.obj

Final_Release/CvArtFileMgr.obj: CvArtFileMgr.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvArtFileMgr.cpp /FoFinal_Release/CvArtFileMgr.obj

Final_Release/CvCity.obj: CvCity.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvCity.cpp /FoFinal_Release/CvCity.obj

Final_Release/CvCityAI.obj: CvCityAI.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvCityAI.cpp /FoFinal_Release/CvCityAI.obj

Final_Release/CvDLLButtonPopup.obj: CvDLLButtonPopup.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvDLLButtonPopup.cpp /FoFinal_Release/CvDLLButtonPopup.obj

Final_Release/CvDLLEntity.obj: CvDLLEntity.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvDLLEntity.cpp /FoFinal_Release/CvDLLEntity.obj

Final_Release/CvDLLPython.obj: CvDLLPython.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvDLLPython.cpp /FoFinal_Release/CvDLLPython.obj

Final_Release/CvDLLWidgetData.obj: CvDLLWidgetData.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvDLLWidgetData.cpp /FoFinal_Release/CvDLLWidgetData.obj

Final_Release/CvDeal.obj: CvDeal.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvDeal.cpp /FoFinal_Release/CvDeal.obj

Final_Release/CvDiploParameters.obj: CvDiploParameters.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvDiploParameters.cpp /FoFinal_Release/CvDiploParameters.obj

Final_Release/CvFractal.obj: CvFractal.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvFractal.cpp /FoFinal_Release/CvFractal.obj

Final_Release/CvGame.obj: CvGame.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvGame.cpp /FoFinal_Release/CvGame.obj

Final_Release/CvGameAI.obj: CvGameAI.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvGameAI.cpp /FoFinal_Release/CvGameAI.obj

Final_Release/CvGameCoreDLL.obj: CvGameCoreDLL.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvGameCoreDLL.cpp /FoFinal_Release/CvGameCoreDLL.obj

Final_Release/CvGameCoreUtils.obj: CvGameCoreUtils.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvGameCoreUtils.cpp /FoFinal_Release/CvGameCoreUtils.obj

Final_Release/CvGameTextMgr.obj: CvGameTextMgr.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvGameTextMgr.cpp /FoFinal_Release/CvGameTextMgr.obj

Final_Release/CvGlobals.obj: CvGlobals.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvGlobals.cpp /FoFinal_Release/CvGlobals.obj

Final_Release/CvHallOfFameInfo.obj: CvHallOfFameInfo.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvHallOfFameInfo.cpp /FoFinal_Release/CvHallOfFameInfo.obj

Final_Release/CvInfoWater.obj: CvInfoWater.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvInfoWater.cpp /FoFinal_Release/CvInfoWater.obj

Final_Release/CvInfos.obj: CvInfos.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvInfos.cpp /FoFinal_Release/CvInfos.obj

Final_Release/CvInitCore.obj: CvInitCore.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvInitCore.cpp /FoFinal_Release/CvInitCore.obj

Final_Release/CvMap.obj: CvMap.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvMap.cpp /FoFinal_Release/CvMap.obj

Final_Release/CvMapGenerator.obj: CvMapGenerator.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvMapGenerator.cpp /FoFinal_Release/CvMapGenerator.obj

Final_Release/CvPlayer.obj: CvPlayer.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvPlayer.cpp /FoFinal_Release/CvPlayer.obj

Final_Release/CvPlayerAI.obj: CvPlayerAI.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvPlayerAI.cpp /FoFinal_Release/CvPlayerAI.obj

Final_Release/CvPlot.obj: CvPlot.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvPlot.cpp /FoFinal_Release/CvPlot.obj

Final_Release/CvPlotGroup.obj: CvPlotGroup.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvPlotGroup.cpp /FoFinal_Release/CvPlotGroup.obj

Final_Release/CvPopupInfo.obj: CvPopupInfo.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvPopupInfo.cpp /FoFinal_Release/CvPopupInfo.obj

Final_Release/CvPopupReturn.obj: CvPopupReturn.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvPopupReturn.cpp /FoFinal_Release/CvPopupReturn.obj

Final_Release/CvRandom.obj: CvRandom.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvRandom.cpp /FoFinal_Release/CvRandom.obj

Final_Release/CvReplayInfo.obj: CvReplayInfo.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvReplayInfo.cpp /FoFinal_Release/CvReplayInfo.obj

Final_Release/CvReplayMessage.obj: CvReplayMessage.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvReplayMessage.cpp /FoFinal_Release/CvReplayMessage.obj

Final_Release/CvSelectionGroup.obj: CvSelectionGroup.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvSelectionGroup.cpp /FoFinal_Release/CvSelectionGroup.obj

Final_Release/CvSelectionGroupAI.obj: CvSelectionGroupAI.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvSelectionGroupAI.cpp /FoFinal_Release/CvSelectionGroupAI.obj

Final_Release/CvStructs.obj: CvStructs.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvStructs.cpp /FoFinal_Release/CvStructs.obj

Final_Release/CvTalkingHeadMessage.obj: CvTalkingHeadMessage.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvTalkingHeadMessage.cpp /FoFinal_Release/CvTalkingHeadMessage.obj

Final_Release/CvTeam.obj: CvTeam.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvTeam.cpp /FoFinal_Release/CvTeam.obj

Final_Release/CvTeamAI.obj: CvTeamAI.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvTeamAI.cpp /FoFinal_Release/CvTeamAI.obj

Final_Release/CvUnit.obj: CvUnit.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvUnit.cpp /FoFinal_Release/CvUnit.obj

Final_Release/CvUnitAI.obj: CvUnitAI.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvUnitAI.cpp /FoFinal_Release/CvUnitAI.obj

Final_Release/CvXMLLoadUtility.obj: CvXMLLoadUtility.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvXMLLoadUtility.cpp /FoFinal_Release/CvXMLLoadUtility.obj

Final_Release/CvXMLLoadUtilityGet.obj: CvXMLLoadUtilityGet.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvXMLLoadUtilityGet.cpp /FoFinal_Release/CvXMLLoadUtilityGet.obj

Final_Release/CvXMLLoadUtilityInit.obj: CvXMLLoadUtilityInit.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvXMLLoadUtilityInit.cpp /FoFinal_Release/CvXMLLoadUtilityInit.obj

Final_Release/CvXMLLoadUtilitySet.obj: CvXMLLoadUtilitySet.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CvXMLLoadUtilitySet.cpp /FoFinal_Release/CvXMLLoadUtilitySet.obj

Final_Release/CyArea.obj: CyArea.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyArea.cpp /FoFinal_Release/CyArea.obj

Final_Release/CyAreaInterface.obj: CyAreaInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyAreaInterface.cpp /FoFinal_Release/CyAreaInterface.obj

Final_Release/CyArgsList.obj: CyArgsList.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyArgsList.cpp /FoFinal_Release/CyArgsList.obj

Final_Release/CyArtFileMgr.obj: CyArtFileMgr.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyArtFileMgr.cpp /FoFinal_Release/CyArtFileMgr.obj

Final_Release/CyArtFileMgrInterface.obj: CyArtFileMgrInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyArtFileMgrInterface.cpp /FoFinal_Release/CyArtFileMgrInterface.obj

Final_Release/CyCity.obj: CyCity.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyCity.cpp /FoFinal_Release/CyCity.obj

Final_Release/CyCityInterface1.obj: CyCityInterface1.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyCityInterface1.cpp /FoFinal_Release/CyCityInterface1.obj

Final_Release/CyDeal.obj: CyDeal.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyDeal.cpp /FoFinal_Release/CyDeal.obj

Final_Release/CyEnumsInterface.obj: CyEnumsInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyEnumsInterface.cpp /FoFinal_Release/CyEnumsInterface.obj

Final_Release/CyGame.obj: CyGame.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGame.cpp /FoFinal_Release/CyGame.obj

Final_Release/CyGameCoreUtils.obj: CyGameCoreUtils.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGameCoreUtils.cpp /FoFinal_Release/CyGameCoreUtils.obj

Final_Release/CyGameCoreUtilsInterface.obj: CyGameCoreUtilsInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGameCoreUtilsInterface.cpp /FoFinal_Release/CyGameCoreUtilsInterface.obj

Final_Release/CyGameInterface.obj: CyGameInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGameInterface.cpp /FoFinal_Release/CyGameInterface.obj

Final_Release/CyGameTextMgr.obj: CyGameTextMgr.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGameTextMgr.cpp /FoFinal_Release/CyGameTextMgr.obj

Final_Release/CyGameTextMgrInterface.obj: CyGameTextMgrInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGameTextMgrInterface.cpp /FoFinal_Release/CyGameTextMgrInterface.obj

Final_Release/CyGlobalContext.obj: CyGlobalContext.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGlobalContext.cpp /FoFinal_Release/CyGlobalContext.obj

Final_Release/CyGlobalContextInterface1.obj: CyGlobalContextInterface1.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGlobalContextInterface1.cpp /FoFinal_Release/CyGlobalContextInterface1.obj

Final_Release/CyGlobalContextInterface2.obj: CyGlobalContextInterface2.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGlobalContextInterface2.cpp /FoFinal_Release/CyGlobalContextInterface2.obj

Final_Release/CyGlobalContextInterface3.obj: CyGlobalContextInterface3.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGlobalContextInterface3.cpp /FoFinal_Release/CyGlobalContextInterface3.obj

Final_Release/CyGlobalContextInterface4.obj: CyGlobalContextInterface4.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyGlobalContextInterface4.cpp /FoFinal_Release/CyGlobalContextInterface4.obj

Final_Release/CyHallOfFameInfo.obj: CyHallOfFameInfo.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyHallOfFameInfo.cpp /FoFinal_Release/CyHallOfFameInfo.obj

Final_Release/CyHallOfFameInterface.obj: CyHallOfFameInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyHallOfFameInterface.cpp /FoFinal_Release/CyHallOfFameInterface.obj

Final_Release/CyInfoInterface1.obj: CyInfoInterface1.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyInfoInterface1.cpp /FoFinal_Release/CyInfoInterface1.obj

Final_Release/CyInfoInterface2.obj: CyInfoInterface2.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyInfoInterface2.cpp /FoFinal_Release/CyInfoInterface2.obj

Final_Release/CyInfoInterface3.obj: CyInfoInterface3.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyInfoInterface3.cpp /FoFinal_Release/CyInfoInterface3.obj

Final_Release/CyMap.obj: CyMap.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyMap.cpp /FoFinal_Release/CyMap.obj

Final_Release/CyMapGenerator.obj: CyMapGenerator.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyMapGenerator.cpp /FoFinal_Release/CyMapGenerator.obj

Final_Release/CyMapGeneratorInterface.obj: CyMapGeneratorInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyMapGeneratorInterface.cpp /FoFinal_Release/CyMapGeneratorInterface.obj

Final_Release/CyMapInterface.obj: CyMapInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyMapInterface.cpp /FoFinal_Release/CyMapInterface.obj

Final_Release/CyPlayer.obj: CyPlayer.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyPlayer.cpp /FoFinal_Release/CyPlayer.obj

Final_Release/CyPlayerInterface1.obj: CyPlayerInterface1.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyPlayerInterface1.cpp /FoFinal_Release/CyPlayerInterface1.obj

Final_Release/CyPlot.obj: CyPlot.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyPlot.cpp /FoFinal_Release/CyPlot.obj

Final_Release/CyPlotInterface1.obj: CyPlotInterface1.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyPlotInterface1.cpp /FoFinal_Release/CyPlotInterface1.obj

Final_Release/CyRandomInterface.obj: CyRandomInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyRandomInterface.cpp /FoFinal_Release/CyRandomInterface.obj

Final_Release/CyReplayInfo.obj: CyReplayInfo.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyReplayInfo.cpp /FoFinal_Release/CyReplayInfo.obj

Final_Release/CySelectionGroup.obj: CySelectionGroup.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CySelectionGroup.cpp /FoFinal_Release/CySelectionGroup.obj

Final_Release/CySelectionGroupInterface.obj: CySelectionGroupInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CySelectionGroupInterface.cpp /FoFinal_Release/CySelectionGroupInterface.obj

Final_Release/CyStructsInterface1.obj: CyStructsInterface1.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyStructsInterface1.cpp /FoFinal_Release/CyStructsInterface1.obj

Final_Release/CyTeam.obj: CyTeam.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyTeam.cpp /FoFinal_Release/CyTeam.obj

Final_Release/CyTeamInterface.obj: CyTeamInterface.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyTeamInterface.cpp /FoFinal_Release/CyTeamInterface.obj

Final_Release/CyUnit.obj: CyUnit.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyUnit.cpp /FoFinal_Release/CyUnit.obj

Final_Release/CyUnitInterface1.obj: CyUnitInterface1.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c CyUnitInterface1.cpp /FoFinal_Release/CyUnitInterface1.obj

Final_Release/FAssert.obj: FAssert.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c FAssert.cpp /FoFinal_Release/FAssert.obj

Final_Release/FDialogTemplate.obj: FDialogTemplate.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c FDialogTemplate.cpp /FoFinal_Release/FDialogTemplate.obj

Final_Release/_precompile.obj: _precompile.cpp
	$(Final_Release_CPP) /nologo $(Final_Release_CFLAGS) $(Final_Release_INCS) /c _precompile.cpp /FoFinal_Release/_precompile.obj



