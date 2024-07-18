model ParSolCol
  extends Buildings.Fluid.Interfaces.PartialTwoPort;
  Modelica.Blocks.Interfaces.RealInput shaCoe_in annotation(
    Placement(transformation(origin = {-130, -74.2}, extent = {{-98, 32.2}, {-70, 4.2}}), iconTransformation(origin = {-147, 8.7}, extent = {{-77, 25.3}, {-55, 3.3}})));
  Buildings.Fluid.Sensors.MassFlowRate senMasFlo(redeclare package Medium = Medium, allowFlowReversal = allowFlowReversal) annotation(
    Placement(transformation(origin = {4.6, -96}, extent = {{-94.6, -11}, {-72.6, 11}})));
  Buildings.Fluid.FixedResistances.PressureDrop res(redeclare final package Medium = Medium, final allowFlowReversal = allowFlowReversal, deltaM = deltaM, final dp_nominal = dp_nominal_final, final from_dp = from_dp, final homotopyInitialization = homotopyInitialization, final linearized = linearizeFlowResistance, final m_flow_nominal = m_flow_nominal, final show_T = show_T) annotation(
    Placement(transformation(origin = {-2, -96}, extent = {{-60, -10}, {-40, 10}})));
  Buildings.Fluid.MixingVolumes.MixingVolume vol(each final C_nominal = C_nominal, each final C_start = C_start, redeclare package Medium = Medium, each final T_start = T_start, each final V = (perPar.V + C/cp_default/rho_default)*nPanels_internal/nSeg, each final X_start = X_start, each final allowFlowReversal = allowFlowReversal, each final energyDynamics = energyDynamics, each final mSenFac = mSenFac, each final m_flow_nominal = m_flow_nominal, each final m_flow_small = m_flow_small, each final massDynamics = massDynamics, each nPorts = 2, each final p_start = p_start, each final prescribedHeatFlowRate = false) annotation(
    Placement(transformation(origin = {34, -112}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temSen annotation(
    Placement(transformation(origin = {-12, -112}, extent = {{-10, 10}, {10, -10}}, rotation = 180)));
  Buildings.HeatTransfer.Sources.PrescribedHeatFlow heaGai annotation(
    Placement(transformation(origin = {82, 50}, extent = {{50, 38}, {70, 58}})));
  Buildings.HeatTransfer.Sources.PrescribedHeatFlow QLos annotation(
    Placement(transformation(origin = {82, 50}, extent = {{50, 6}, {70, 26}})));
  Modelica.Blocks.Interfaces.RealOutput H(final quantity = "RadiantEnergyFluenceRate", final unit = "W/m2") annotation(
    Placement(transformation(origin = {-88, 136}, extent = {{100, -10}, {120, 10}}), iconTransformation(origin = {102, -8}, extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {-56, 137}, extent = {{30, -5}, {40, 5}})));
  Modelica.Blocks.Interfaces.RealOutput HSkyDifTil annotation(
    Placement(transformation(origin = {-116, 92}, extent = {{100, 50}, {120, 70}}), iconTransformation(origin = {100, 4}, extent = {{100, 50}, {120, 70}})));
  Modelica.Blocks.Interfaces.RealOutput HGroDifTil annotation(
    Placement(transformation(origin = {-122, 174}, extent = {{100, -70}, {120, -50}}), iconTransformation(origin = {106, -22}, extent = {{100, -70}, {120, -50}})));
  Modelica.Blocks.Interfaces.RealInput Time annotation(
    Placement(transformation(origin = {-228, 15}, extent = {{0, -12}, {24, 12}}), iconTransformation(origin = {-226, -57}, extent = {{0, -12}, {24, 12}})));
  Modelica.Blocks.Interfaces.RealInput SolDir annotation(
    Placement(transformation(origin = {-9, 126}, extent = {{-217, 56}, {-189, 84}}), iconTransformation(origin = {-82.5, 38}, extent = {{-139.5, 36}, {-121.5, 54}})));
  HVAC.WeatherUtils.IncidenceAngle_f_CloTime incidenceAngle_f_CloTime(azi = 1.570796326794897, lat = 2.268928027592628, lon = 1.919862177193763, til = 0, timZon = 28800) annotation(
    Placement(transformation(origin = {8, 157.5}, extent = {{-120, -121.5}, {-104, -103.5}})));
  HVAC.WeatherUtils.SolGloHori_f_SolDirNormSolDifHori solGloHori_f_SolDirNormSolDifHori(lat = 2.268928027592628, lon = 1.919862177193763, timZon = 28800) annotation(
    Placement(transformation(origin = {-116, 164}, extent = {{-8, -8}, {8, 8}})));
  Modelica.Blocks.Interfaces.RealInput SolDifHori annotation(
    Placement(transformation(origin = {-213, 169}, extent = {{-13, -13}, {13, 13}}), iconTransformation(origin = {-212, 54}, extent = {{-10, -10}, {10, 10}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.DiffusePerez HDifTil(final rho = rho, final til = til) annotation(
    Placement(transformation(origin = {54.8, 90.4}, extent = {{-108.8, 41.6}, {-92.8, 57.6}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.SkyClearness skyCle annotation(
    Placement(transformation(origin = {-120, 110}, extent = {{-18, 24}, {-6, 36}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.BrighteningCoefficient briCoe annotation(
    Placement(transformation(origin = {-91, 130}, extent = {{-21, -28}, {-7, -14}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.RelativeAirMass relAirMas annotation(
    Placement(transformation(origin = {-157, 132}, extent = {{-35, -20}, {-25, -10}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.SkyBrightness skyBri annotation(
    Placement(transformation(origin = {-153, 115}, extent = {{-5, -5}, {5, 5}})));
  Buildings.BoundaryConditions.SolarGeometry.BaseClasses.ZenithAngle zen(lat = lat) annotation(
    Placement(transformation(origin = {-122, 76}, extent = {{-6, -6}, {6, 6}})));
  Buildings.BoundaryConditions.SolarGeometry.BaseClasses.Declination decAng annotation(
    Placement(transformation(origin = {-161, 61}, extent = {{-5, -5}, {5, 5}})));
  Buildings.BoundaryConditions.SolarGeometry.BaseClasses.SolarHourAngle solHouAng annotation(
    Placement(transformation(origin = {-160, 88}, extent = {{-6, -6}, {6, 6}})));
  HVAC.WeatherUtils.SolarTime solarTime annotation(
    Placement(transformation(origin = {-105, 58}, extent = {{-93, 24}, {-81, 36}})));
  Modelica.Blocks.Interfaces.RealOutput H1(final quantity = "RadiantEnergyFluenceRate", final unit = "W/m2") annotation(
    Placement(transformation(origin = {-88, 58}, extent = {{100, -10}, {120, 10}}), iconTransformation(origin = {102, 24}, extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.RealOutput inc(displayUnit = "deg", final quantity = "Angle", final unit = "rad") annotation(
    Placement(transformation(origin = {-84, 54}, extent = {{100, -50}, {120, -30}}), iconTransformation(origin = {106, -12}, extent = {{100, -50}, {120, -30}})));
  HVAC.WeatherUtils.IncidenceAngle_f_CloTime incidenceAngle_f_CloTime1 annotation(
    Placement(transformation(origin = {-24, 34}, extent = {{-50, -30}, {-30, -10}})));
  HVAC.WeatherUtils.DirectTitledSurface_f_CloTime directTitledSurface_f_CloTime annotation(
    Placement(transformation(origin = {-46, 75}, extent = {{-10, -7}, {10, 7}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.DirectTiltedSurface HDirTil1 annotation(
    Placement(transformation(origin = {-16, 68}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.SolarCollectors.BaseClasses.ASHRAESolarGain solGai(final A_c = TotalArea_internal, final B0 = per.B0, final B1 = per.B1, redeclare package Medium = Medium, final nSeg = nSeg, final shaCoe = shaCoe, final til = til, final use_shaCoe_in = use_shaCoe_in, final y_intercept = per.y_intercept) annotation(
    Placement(transformation(origin = {76, 66.2}, extent = {{-22, 41.8}, {0, 63.8}})));
  Modelica.Blocks.Interfaces.RealInput Tenv annotation(
    Placement(transformation(origin = {-218, -24}, extent = {{-18, -18}, {18, 18}}), iconTransformation(origin = {-212, -14}, extent = {{-12, -12}, {12, 12}})));
  Buildings.Fluid.SolarCollectors.Data.GenericSolarCollector per annotation(
    Placement(transformation(origin = {44, -10}, extent = {{60, -80}, {80, -60}})));
  Buildings.Fluid.SolarCollectors.BaseClasses.PartialHeatLoss heaLos(A_c = TotalArea_internal, nSeg = nSeg, y_intercept = per.y_intercept, redeclare package Medium = Medium, cp_default = cp_default, QLos_nominal = per.slope, G_nominal = per.G_nominal, dT_nominal = per.dT_nominal, m_flow_nominal = per.mperA_flow_nominal*per.A*nPanels_internal)  annotation(
    Placement(transformation(origin = {72, 58}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(senMasFlo.port_b, res.port_a) annotation(
    Line(points = {{-68, -96}, {-62, -96}}, color = {0, 127, 255}));
  connect(vol[1].ports[1], res.port_b) annotation(
    Line(points = {{34, -102}, {34, -96}, {-42, -96}}, color = {0, 127, 255}));
  connect(vol.heatPort, temSen.port) annotation(
    Line(points = {{24, -112}, {-2, -112}}, color = {191, 0, 0}));
  connect(heaGai.port, vol.heatPort) annotation(
    Line(points = {{152, 98}, {152, -140}, {16, -140}, {16, -112}, {24, -112}}, color = {191, 0, 0}));
  connect(QLos.port, vol.heatPort) annotation(
    Line(points = {{152, 66}, {152, -140}, {16, -140}, {16, -112}, {24, -112}}, color = {191, 0, 0}));
  connect(skyBri.skyBri, briCoe.skyBri) annotation(
    Line(points = {{-147.5, 115}, {-147.5, 109}, {-113.2, 109}}, color = {0, 0, 127}));
  connect(skyCle.skyCle, briCoe.skyCle) annotation(
    Line(points = {{-125, 140}, {-125.9, 140}, {-125.9, 138}, {-124.8, 138}, {-124.8, 113}, {-113, 113}}, color = {0, 0, 127}));
  connect(briCoe.F2, HDifTil.briCof2) annotation(
    Line(points = {{-97, 106}, {-101.8, 106}, {-101.8, 139}, {-56, 139}}, color = {0, 0, 127}));
  connect(briCoe.F1, HDifTil.briCof1) annotation(
    Line(points = {{-97, 112}, {-89.8, 112}, {-89.8, 142}, {-56, 142}}, color = {0, 0, 127}));
  connect(HDifTil.HSkyDifTil, add.u1) annotation(
    Line(points = {{-37.2, 143.2}, {-37.2, 140}, {-27, 140}}, color = {0, 0, 127}, thickness = 0.5));
  connect(HDifTil.HGroDifTil, add.u2) annotation(
    Line(points = {{-37.2, 136.8}, {-37.4, 136.8}, {-37.4, 135.6}, {-36.4, 135.6}, {-36.4, 134}, {-27, 134}}, color = {0, 0, 127}));
  connect(add.y, H) annotation(
    Line(points = {{-15.5, 137}, {-10, 137}, {-10, 136}, {22, 136}}, color = {0, 0, 127}));
  connect(HDifTil.HSkyDifTil, HSkyDifTil) annotation(
    Line(points = {{-37.2, 143.2}, {-20.55, 143.2}, {-20.55, 141.2}, {-5.9, 141.2}, {-5.9, 152}, {-6, 152}}, color = {0, 0, 127}));
  connect(HDifTil.HGroDifTil, HGroDifTil) annotation(
    Line(points = {{-37.2, 136.8}, {-37.9, 136.8}, {-37.9, 114.6}, {-11.4, 114.6}, {-11.4, 114}, {-12, 114}}, color = {0, 0, 127}));
  connect(Time, incidenceAngle_f_CloTime.secondsFromJan1st) annotation(
    Line(points = {{-216, 15}, {-177, 15}, {-177, 45}, {-114, 45}}, color = {0, 0, 127}));
  connect(incidenceAngle_f_CloTime.IncAng, HDifTil.incAng) annotation(
    Line(points = {{-95, 45}, {-90.2, 45}, {-90.2, 134}, {-56, 134}}, color = {0, 0, 127}));
  connect(solGloHori_f_SolDirNormSolDifHori.SolGloHori, HDifTil.HGloHor) annotation(
    Line(points = {{-107, 164}, {-93.7, 164}, {-93.7, 146}, {-56, 146}}, color = {0, 0, 127}));
  connect(SolDir, solGloHori_f_SolDirNormSolDifHori.SolDirNorm) annotation(
    Line(points = {{-212, 196}, {-176, 196}, {-176, 169}, {-125, 169}}, color = {0, 0, 127}));
  connect(zen.zen, HDifTil.zen) annotation(
    Line(points = {{-115, 76}, {-101.9, 76}, {-101.9, 118}, {-76, 118}, {-76, 137}, {-56, 137}}, color = {0, 0, 127}));
  connect(solarTime.solTime, solHouAng.solTim) annotation(
    Line(points = {{-185, 88}, {-167, 88}}, color = {0, 0, 127}));
  connect(Time, decAng.nDay) annotation(
    Line(points = {{-216, 15}, {-216, 61}, {-167, 61}}, color = {0, 0, 127}));
  connect(decAng.decAng, zen.decAng) annotation(
    Line(points = {{-155.5, 61}, {-140.4, 61}, {-140.4, 79}, {-129, 79}}, color = {0, 0, 127}));
  connect(Time, solarTime.secondsFromJan1st) annotation(
    Line(points = {{-216, 15}, {-216, 37}, {-199, 37}, {-199, 88}}, color = {0, 0, 127}));
  connect(solHouAng.solHouAng, zen.solHouAng) annotation(
    Line(points = {{-153, 88}, {-153, 73.5}, {-129, 73.5}, {-129, 73}}, color = {0, 0, 127}));
  connect(Time, solGloHori_f_SolDirNormSolDifHori.secondsFromJan1st) annotation(
    Line(points = {{-216, 15}, {-202, 15}, {-202, 164}, {-125, 164}}, color = {0, 0, 127}));
  connect(SolDifHori, solGloHori_f_SolDirNormSolDifHori.SolDifHori) annotation(
    Line(points = {{-213, 169}, {-176, 169}, {-176, 159}, {-125, 159}}, color = {0, 0, 127}));
  connect(zen.zen, relAirMas.zen) annotation(
    Line(points = {{-115.4, 76}, {-108.4, 76}, {-108.4, 98}, {-202.4, 98}, {-202.4, 117}, {-193, 117}}, color = {0, 0, 127}));
  connect(zen.zen, skyCle.zen) annotation(
    Line(points = {{-115, 76}, {-118.4, 76}, {-118.4, 98}, {-180.4, 98}, {-180.4, 136}, {-139, 136}}, color = {0, 0, 127}));
  connect(zen.zen, briCoe.zen) annotation(
    Line(points = {{-115.4, 76}, {-108.4, 76}, {-108.4, 98}, {-170.4, 98}, {-170.4, 105}, {-113.4, 105}}, color = {0, 0, 127}));
  connect(relAirMas.relAirMas, skyBri.relAirMas) annotation(
    Line(points = {{-181.5, 117}, {-159, 117}}, color = {0, 0, 127}));
  connect(solGloHori_f_SolDirNormSolDifHori.SolGloHori, skyCle.HGloHor) annotation(
    Line(points = {{-107, 164}, {-78.7, 164}, {-78.7, 152}, {-146.7, 152}, {-146.7, 144}, {-139, 144}}, color = {0, 0, 127}));
  connect(SolDifHori, skyCle.HDifHor) annotation(
    Line(points = {{-213, 169}, {-213, 137.25}, {-139, 137.25}, {-139, 140}}, color = {0, 0, 127}));
  connect(SolDifHori, skyBri.HDifHor) annotation(
    Line(points = {{-213, 169}, {-180, 169}, {-180, 113}, {-159, 113}}, color = {0, 0, 127}));
  connect(SolDifHori, HDifTil.HDifHor) annotation(
    Line(points = {{-213, 169}, {-198, 169}, {-198, 150}, {-110, 150}, {-110, 144}, {-56, 144}}, color = {0, 0, 127}));
  connect(HDirTil1.HDirTil, H1) annotation(
    Line(points = {{-5, 68}, {11.25, 68}, {11.25, 60}, {11.5, 60}, {11.5, 58}, {22, 58}}, color = {0, 0, 127}));
  connect(incidenceAngle_f_CloTime1.IncAng, HDirTil1.incAng) annotation(
    Line(points = {{-53, 14}, {-28, 14}, {-28, 62}}, color = {0, 0, 127}));
  connect(incidenceAngle_f_CloTime1.IncAng, inc) annotation(
    Line(points = {{-53, 14}, {26, 14}}, color = {0, 0, 127}));
  connect(directTitledSurface_f_CloTime.titledDirSol, HDirTil1.HDirNor) annotation(
    Line(points = {{-35, 75}, {-32.8, 75}, {-32.8, 74}, {-28, 74}}, color = {0, 0, 127}));
  connect(SolDir, directTitledSurface_f_CloTime.dirSol) annotation(
    Line(points = {{-212, 196}, {-58, 196}, {-58, 79}}, color = {0, 0, 127}));
  connect(Time, incidenceAngle_f_CloTime1.secondsFromJan1st) annotation(
    Line(points = {{-216, 15}, {-76, 15}, {-76, 14}}, color = {0, 0, 127}));
  connect(Time, directTitledSurface_f_CloTime.secondsFromJan1st) annotation(
    Line(points = {{-216, 15}, {-164.5, 15}, {-164.5, 28}, {-58, 28}, {-58, 71}}, color = {0, 0, 127}));
  connect(port_a, senMasFlo.port_a) annotation(
    Line(points = {{-100, 0}, {-100, -96}, {-90, -96}}, color = {0, 85, 255}));
  connect(vol.ports[2], port_b) annotation(
    Line(points = {{34, -102}, {34, 0}, {100, 0}}, color = {0, 127, 255}));
  connect(HSkyDifTil, solGai.HSkyDifTil) annotation(
    Line(points = {{-6, 152}, {50, 152}, {50, 128}, {52, 128}}, color = {0, 0, 127}));
  connect(HGroDifTil, solGai.HGroDifTil) annotation(
    Line(points = {{-12, 114}, {40, 114}, {40, 124}, {52, 124}}, color = {0, 0, 127}));
  connect(H1, solGai.HDirTil) annotation(
    Line(points = {{22, 58}, {40, 58}, {40, 121}, {52, 121}}, color = {0, 0, 127}));
  connect(inc, solGai.incAng) annotation(
    Line(points = {{26, 14}, {40, 14}, {40, 117}, {52, 117}}, color = {0, 0, 127}));
  connect(shaCoe_in, solGai.shaCoe_in) annotation(
    Line(points = {{-214, -56}, {40, -56}, {40, 113.5}, {52, 113.5}}, color = {0, 0, 127}));
  connect(temSen.T, solGai.TFlu) annotation(
    Line(points = {{-22, -112}, {-26, -112}, {-26, -56}, {40, -56}, {40, 110}, {52, 110}}, color = {0, 0, 127}));
  connect(solGai.QSol_flow, heaGai.Q_flow) annotation(
    Line(points = {{78, 120}, {98, 120}, {98, 98}, {132, 98}}, color = {0, 0, 127}));
  connect(Tenv, heaLos.TEnv) annotation(
    Line(points = {{-218, -24}, {40, -24}, {40, 64}, {60, 64}}, color = {0, 0, 127}));
  connect(temSen.T, heaLos.TFlu) annotation(
    Line(points = {{-22, -112}, {-26, -112}, {-26, -56}, {40, -56}, {40, 52}, {60, 52}}, color = {0, 0, 127}));
  connect(heaLos.QLos, QLos.Q_flow) annotation(
    Line(points = {{84, 58}, {122, 58}, {122, 66}, {132, 66}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}}), graphics = {Rectangle(origin = {1, 6}, fillPattern = FillPattern.Solid, extent = {{-101, 80}, {101, -80}})}),
    version = "",
    uses(Buildings(version = "8.1.3"), Modelica(version = "3.2.3")));
end ParSolCol;
