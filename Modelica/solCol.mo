model solCol
  extends Buildings.Fluid.Interfaces.PartialTwoPort;
  Modelica.Blocks.Interfaces.RealInput shaCoe_in annotation(
    Placement(transformation(origin = {-602, -58.8}, extent = {{-112, 36.8}, {-80, 4.8}}), iconTransformation(origin = {114, -24}, extent = {{-264, -24}, {-216, 24}})));
  Buildings.Fluid.Sensors.MassFlowRate senMasFlo(redeclare package Medium = Medium, allowFlowReversal = allowFlowReversal) annotation(
    Placement(transformation(origin = {-6, -150}, extent = {{-86, -11}, {-66, 11}})));
  Buildings.Fluid.FixedResistances.PressureDrop res(redeclare final package Medium = Medium, final allowFlowReversal = allowFlowReversal, deltaM = deltaM, final dp_nominal = dp_nominal_final, final from_dp = from_dp, final homotopyInitialization = homotopyInitialization, final linearized = linearizeFlowResistance, final m_flow_nominal = m_flow_nominal, final show_T = show_T) annotation(
    Placement(transformation(origin = {-4, -166}, extent = {{-60, -10}, {-40, 10}})));
  Buildings.Fluid.MixingVolumes.MixingVolume vol(each final C_nominal = C_nominal, each final C_start = C_start, redeclare package Medium = Medium, each final T_start = T_start, each final V = (perPar.V + C/cp_default/rho_default)*nPanels_internal/nSeg, each final X_start = X_start, each final allowFlowReversal = allowFlowReversal, each final energyDynamics = energyDynamics, each final mSenFac = mSenFac, each final m_flow_nominal = m_flow_nominal, each final m_flow_small = m_flow_small, each final massDynamics = massDynamics, each nPorts = 2, each final p_start = p_start, each final prescribedHeatFlowRate = false) annotation(
    Placement(transformation(origin = {58, -162}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temSen annotation(
    Placement(transformation(origin = {-2, -182}, extent = {{-10, 10}, {10, -10}}, rotation = 180)));
  Buildings.HeatTransfer.Sources.PrescribedHeatFlow heaGai annotation(
    Placement(transformation(origin = {-4, -144}, extent = {{50, 38}, {70, 58}})));
  Buildings.HeatTransfer.Sources.PrescribedHeatFlow QLos annotation(
    Placement(transformation(origin = {-4, -144}, extent = {{50, 6}, {70, 26}})));
  Buildings.Fluid.SolarCollectors.Data.GenericSolarCollector per annotation(
    Placement(transformation(origin = {-6, -128}, extent = {{60, -80}, {80, -60}})));
  Buildings.Fluid.SolarCollectors.BaseClasses.ASHRAESolarGain solGai(final A_c = TotalArea_internal, final B0 = per.B0, final B1 = per.B1, redeclare package Medium = Medium, final nSeg = nSeg, final shaCoe = shaCoe, final til = til, final use_shaCoe_in = use_shaCoe_in, final y_intercept = per.y_intercept) annotation(
    Placement(transformation(origin = {16, -42}, extent = {{-20, 38}, {0, 58}})));
  Buildings.Fluid.SolarCollectors.BaseClasses.ASHRAEHeatLoss heaLos(final A_c = TotalArea_internal, final G_nominal = per.G_nominal, redeclare package Medium = Medium, final cp_default = cp_default, dT_nominal = per.dT_nominal, m_flow_nominal = per.mperA_flow_nominal*per.A*nPanels_internal, final nSeg = nSeg, final slope = per.slope, final y_intercept = per.y_intercept) annotation(
    Placement(transformation(origin = {-4, -166}, extent = {{-20, 6}, {0, 26}})));
  Modelica.Blocks.Interfaces.RealInput TEnv annotation(
    Placement(transformation(origin = {-695, -127}, extent = {{-11, -11}, {11, 11}}), iconTransformation(origin = {164, -170}, extent = {{-308, -28}, {-252, 28}}, rotation = -0)));
  Modelica.Blocks.Interfaces.RealInput SolDirN annotation(
    Placement(transformation(origin = {-694, 64}, extent = {{-16, -16}, {16, 16}}), iconTransformation(origin = {4, 17.4}, extent = {{-154, 50.6}, {-110, 6.6}})));
  Modelica.Blocks.Interfaces.RealInput SolDifH annotation(
    Placement(transformation(origin = {-695, 95}, extent = {{-15, -15}, {15, 15}}), iconTransformation(origin = {-124, -94}, extent = {{-24, -24}, {24, 24}})));
  Modelica.Blocks.Interfaces.RealInput Time annotation(
    Placement(transformation(origin = {-698, 4}, extent = {{-16, -16}, {16, 16}}), iconTransformation(origin = {-127, 101}, extent = {{-21, -21}, {21, 21}})));
  Modelica.Blocks.Interfaces.RealOutput H(final quantity = "RadiantEnergyFluenceRate", final unit = "W/m2") annotation(
    Placement(transformation(origin = {38, 182}, extent = {{100, -10}, {120, 10}}), iconTransformation(origin = {28, 30}, extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {12, 197}, extent = {{30, -5}, {40, 5}})));
  Modelica.Blocks.Interfaces.RealOutput HSkyDifTil annotation(
    Placement(transformation(origin = {-24, 182}, extent = {{100, 50}, {120, 70}}), iconTransformation(origin = {32, 18}, extent = {{100, 50}, {120, 70}})));
  Modelica.Blocks.Interfaces.RealOutput HGroDifTil annotation(
    Placement(transformation(origin = {-30, 180}, extent = {{100, -70}, {120, -50}}), iconTransformation(origin = {26, -42}, extent = {{100, -70}, {120, -50}})));
  HVAC.WeatherUtils.IncidenceAngle_f_CloTime incidenceAngle_f_CloTime(azi = 1.570796326794897, lat = 2.268928027592628, lon = 1.919862177193763, til = 0, timZon = 28800) annotation(
    Placement(transformation(origin = {48, 201.5}, extent = {{-120, -121.5}, {-104, -103.5}})));
  HVAC.WeatherUtils.SolGloHori_f_SolDirNormSolDifHori solGloHori_f_SolDirNormSolDifHori(lat = 2.268928027592628, lon = 1.919862177193763, timZon = 28800) annotation(
    Placement(transformation(origin = {-65, 216}, extent = {{-13, -8}, {13, 8}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.DiffusePerez HDifTil(final rho = rho, final til = til) annotation(
    Placement(transformation(origin = {232.8, 68.4}, extent = {{-244.8, 93.6}, {-208.8, 129.6}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.SkyClearness skyCle annotation(
    Placement(transformation(origin = {-71, 156}, extent = {{-21, 28}, {-7, 42}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.BrighteningCoefficient briCoe annotation(
    Placement(transformation(origin = {-39, 184}, extent = {{-21, -28}, {-7, -14}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.RelativeAirMass relAirMas annotation(
    Placement(transformation(origin = {-99, 176}, extent = {{-35, -20}, {-25, -10}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.SkyBrightness skyBri annotation(
    Placement(transformation(origin = {-98, 166}, extent = {{-8, -8}, {8, 8}})));
  Buildings.BoundaryConditions.SolarGeometry.BaseClasses.ZenithAngle zen(lat = lat) annotation(
    Placement(transformation(origin = {-70, 130}, extent = {{-6, -6}, {6, 6}})));
  Buildings.BoundaryConditions.SolarGeometry.BaseClasses.Declination decAng annotation(
    Placement(transformation(origin = {-104, 110}, extent = {{-10, -10}, {10, 10}})));
  Buildings.BoundaryConditions.SolarGeometry.BaseClasses.SolarHourAngle solHouAng annotation(
    Placement(transformation(origin = {-104, 138}, extent = {{-10, -10}, {10, 10}})));
  HVAC.WeatherUtils.SolarTime solarTime annotation(
    Placement(transformation(origin = {-6.5, 94}, extent = {{-139.5, 36}, {-121.5, 54}})));
  Modelica.Blocks.Interfaces.RealOutput H1(final quantity = "RadiantEnergyFluenceRate", final unit = "W/m2") annotation(
    Placement(transformation(origin = {-140, 62}, extent = {{100, -10}, {120, 10}}), iconTransformation(origin = {26, 0}, extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Interfaces.RealOutput inc(displayUnit = "deg", final quantity = "Angle", final unit = "rad") annotation(
    Placement(transformation(origin = {-138, 72}, extent = {{100, -50}, {120, -30}}), iconTransformation(origin = {28, -2}, extent = {{100, -50}, {120, -30}})));
  HVAC.WeatherUtils.IncidenceAngle_f_CloTime incidenceAngle_f_CloTime1 annotation(
    Placement(transformation(origin = {-84, 52}, extent = {{-50, -30}, {-30, -10}})));
  HVAC.WeatherUtils.DirectTitledSurface_f_CloTime directTitledSurface_f_CloTime annotation(
    Placement(transformation(origin = {-124, 68}, extent = {{-12, -12}, {12, 12}})));
  Buildings.BoundaryConditions.SolarIrradiation.BaseClasses.DirectTiltedSurface HDirTil1 annotation(
    Placement(transformation(origin = {-80, 62}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(senMasFlo.port_b, res.port_a) annotation(
    Line(points = {{-72, -150}, {-69, -150}, {-69, -166}, {-64, -166}}, color = {0, 127, 255}));
  connect(vol[1].ports[1], res.port_b) annotation(
    Line(points = {{58, -152}, {13, -152}, {13, -166}, {-44, -166}}, color = {0, 127, 255}));
  connect(vol.heatPort, temSen.port) annotation(
    Line(points = {{48, -162}, {36, -162}, {36, -182}, {8, -182}}, color = {191, 0, 0}));
  connect(heaGai.port, vol.heatPort) annotation(
    Line(points = {{66, -96}, {88, -96}, {88, -188}, {26, -188}, {26, -162}, {48, -162}}, color = {191, 0, 0}));
  connect(QLos.port, vol.heatPort) annotation(
    Line(points = {{66, -128}, {88, -128}, {88, -188}, {26, -188}, {26, -162}, {48, -162}}, color = {191, 0, 0}));
  connect(shaCoe_in, solGai.shaCoe_in) annotation(
    Line(points = {{-698, -38}, {-54, -38}, {-54, 1}, {-6, 1}}, color = {0, 0, 127}));
  connect(solGai.QSol_flow, heaGai.Q_flow) annotation(
    Line(points = {{17, 6}, {33.5, 6}, {33.5, -96}, {46, -96}}, color = {0, 0, 127}));
  connect(temSen.T, heaLos.TFlu) annotation(
    Line(points = {{-12, -182}, {-36, -182}, {-36, -156}, {-26, -156}}, color = {0, 0, 127}));
  connect(temSen.T, solGai.TFlu) annotation(
    Line(points = {{-12, -182}, {-36, -182}, {-36, -2}, {-6, -2}}, color = {0, 0, 127}));
  connect(heaLos.QLos, QLos.Q_flow) annotation(
    Line(points = {{-3, -150}, {21.5, -150}, {21.5, -128}, {46, -128}}, color = {0, 0, 127}));
  connect(TEnv, heaLos.TEnv) annotation(
    Line(points = {{-695, -127}, {-92, -127}, {-92, -144}, {-26, -144}}, color = {0, 0, 127}));
  connect(port_a, senMasFlo.port_a) annotation(
    Line(points = {{-100, 0}, {-92, 0}, {-92, -150}}));
  connect(vol.ports[2], port_b) annotation(
    Line(points = {{58, -152}, {58, -135}, {94, -135}, {94, -128}}, color = {0, 127, 255}));
  connect(skyBri.skyBri, briCoe.skyBri) annotation(
    Line(points = {{-89.2, 166}, {-89.2, 163}, {-61.2, 163}}, color = {0, 0, 127}));
  connect(skyCle.skyCle, briCoe.skyCle) annotation(
    Line(points = {{-77.3, 191}, {-74.8, 191}, {-74.8, 167}, {-61.3, 167}}, color = {0, 0, 127}));
  connect(briCoe.F2, HDifTil.briCof2) annotation(
    Line(points = {{-45.3, 160.2}, {-39.8, 160.2}, {-39.8, 178.2}, {-16.3, 178.2}}, color = {0, 0, 127}));
  connect(briCoe.F1, HDifTil.briCof1) annotation(
    Line(points = {{-45.3, 165.8}, {-27.8, 165.8}, {-27.8, 183.8}, {-16.3, 183.8}}, color = {0, 0, 127}));
  connect(HDifTil.HSkyDifTil, add.u1) annotation(
    Line(points = {{25.8, 187.2}, {25.8, 200.2}, {40.8, 200.2}}, color = {0, 0, 127}, thickness = 0.5));
  connect(HDifTil.HGroDifTil, add.u2) annotation(
    Line(points = {{25.8, 172.8}, {24.8, 172.8}, {24.8, 171.8}, {31.8, 171.8}, {31.8, 193.8}, {40.8, 193.8}}, color = {0, 0, 127}));
  connect(add.y, H) annotation(
    Line(points = {{52.5, 197}, {52, 197}, {52, 182}, {148, 182}}, color = {0, 0, 127}));
  connect(HDifTil.HSkyDifTil, HSkyDifTil) annotation(
    Line(points = {{25.8, 187.2}, {60.1, 187.2}, {60.1, 242.4}, {85.6, 242.4}}, color = {0, 0, 127}));
  connect(HDifTil.HGroDifTil, HGroDifTil) annotation(
    Line(points = {{25.8, 172.8}, {36.3, 172.8}, {36.3, 120.8}, {66.8, 120.8}, {66.8, 119.8}, {79.8, 119.8}}, color = {0, 0, 127}));
  connect(incidenceAngle_f_CloTime.IncAng, HDifTil.incAng) annotation(
    Line(points = {{-55.2, 89}, {-28.2, 89}, {-28.2, 167}, {-16.2, 167}}, color = {0, 0, 127}));
  connect(solGloHori_f_SolDirNormSolDifHori.SolGloHori, HDifTil.HGloHor) annotation(
    Line(points = {{-50.7, 216}, {-31.7, 216}, {-31.7, 194}, {-15.7, 194}}, color = {0, 0, 127}));
  connect(zen.zen, HDifTil.zen) annotation(
    Line(points = {{-63.4, 130}, {-39.9, 130}, {-39.9, 172}, {-16.4, 172}, {-16.4, 173}}, color = {0, 0, 127}));
  connect(solarTime.solTime, solHouAng.solTim) annotation(
    Line(points = {{-127.1, 139}, {-114.6, 139}, {-114.6, 138}, {-116.1, 138}}, color = {0, 0, 127}));
  connect(decAng.decAng, zen.decAng) annotation(
    Line(points = {{-93, 110}, {-88.4, 110}, {-88.4, 133}, {-77, 133}}, color = {0, 0, 127}));
  connect(solHouAng.solHouAng, zen.solHouAng) annotation(
    Line(points = {{-93, 138}, {-93, 127.5}, {-77, 127.5}, {-77, 127}}, color = {0, 0, 127}));
  connect(zen.zen, relAirMas.zen) annotation(
    Line(points = {{-63.4, 130}, {-56.4, 130}, {-56.4, 152}, {-152.4, 152}, {-152.4, 161}, {-135.4, 161}}, color = {0, 0, 127}));
  connect(zen.zen, skyCle.zen) annotation(
    Line(points = {{-63.4, 130}, {-56.4, 130}, {-56.4, 152}, {-118.4, 152}, {-118.4, 187}, {-93.4, 187}}, color = {0, 0, 127}));
  connect(zen.zen, briCoe.zen) annotation(
    Line(points = {{-63.4, 130}, {-56.4, 130}, {-56.4, 152}, {-118.4, 152}, {-118.4, 159}, {-61.4, 159}}, color = {0, 0, 127}));
  connect(relAirMas.relAirMas, skyBri.relAirMas) annotation(
    Line(points = {{-123.5, 161}, {-115.75, 161}, {-115.75, 169}, {-108, 169}}, color = {0, 0, 127}));
  connect(solGloHori_f_SolDirNormSolDifHori.SolGloHori, skyCle.HGloHor) annotation(
    Line(points = {{-50.7, 216}, {-32.7, 216}, {-32.7, 204}, {-100.7, 204}, {-100.7, 195}, {-93.7, 195}}, color = {0, 0, 127}));
  connect(SolDirN, solGloHori_f_SolDirNormSolDifHori.SolDirNorm) annotation(
    Line(points = {{-694, 64}, {-146, 64}, {-146, 250}, {-79, 250}, {-79, 221}}, color = {0, 0, 127}));
  connect(Time, solGloHori_f_SolDirNormSolDifHori.secondsFromJan1st) annotation(
    Line(points = {{-698, 4}, {-146, 4}, {-146, 216}, {-79, 216}}, color = {0, 0, 127}));
  connect(Time, solarTime.secondsFromJan1st) annotation(
    Line(points = {{-698, 4}, {-148, 4}, {-148, 139}}, color = {0, 0, 127}));
  connect(Time, decAng.nDay) annotation(
    Line(points = {{-698, 4}, {-146, 4}, {-146, 110}, {-116, 110}}, color = {0, 0, 127}));
  connect(Time, incidenceAngle_f_CloTime.secondsFromJan1st) annotation(
    Line(points = {{-698, 4}, {-146, 4}, {-146, 108}, {-74, 108}, {-74, 89}}, color = {0, 0, 127}));
  connect(SolDifH, HDifTil.HDifHor) annotation(
    Line(points = {{-695, 95}, {-116, 95}, {-116, 202}, {-16, 202}, {-16, 189}}, color = {0, 0, 127}));
  connect(SolDifH, skyBri.HDifHor) annotation(
    Line(points = {{-695, 95}, {-108, 95}, {-108, 163}}, color = {0, 0, 127}));
  connect(SolDifH, solGloHori_f_SolDirNormSolDifHori.SolDifHori) annotation(
    Line(points = {{-695, 95}, {-116, 95}, {-116, 211}, {-79, 211}}, color = {0, 0, 127}));
  connect(SolDifH, skyCle.HDifHor) annotation(
    Line(points = {{-695, 95}, {-116, 95}, {-116, 191}, {-93, 191}}, color = {0, 0, 127}));
  connect(HSkyDifTil, solGai.HSkyDifTil) annotation(
    Line(points = {{86, 242}, {128, 242}, {128, 48}, {-14, 48}, {-14, 14}, {-6, 14}}, color = {0, 0, 127}));
  connect(HGroDifTil, solGai.HGroDifTil) annotation(
    Line(points = {{80, 120}, {128, 120}, {128, 48}, {-14, 48}, {-14, 10}, {-6, 10}}, color = {0, 0, 127}));
  connect(HDirTil1.HDirTil, H1) annotation(
    Line(points = {{-69, 62}, {-30, 62}}, color = {0, 0, 127}));
  connect(incidenceAngle_f_CloTime1.IncAng, HDirTil1.incAng) annotation(
    Line(points = {{-113, 32}, {-92, 32}, {-92, 56}}, color = {0, 0, 127}));
  connect(incidenceAngle_f_CloTime1.IncAng, inc) annotation(
    Line(points = {{-113, 32}, {-28, 32}}, color = {0, 0, 127}));
  connect(directTitledSurface_f_CloTime.titledDirSol, HDirTil1.HDirNor) annotation(
    Line(points = {{-110.8, 68}, {-92, 68}}, color = {0, 0, 127}));
  connect(Time, incidenceAngle_f_CloTime1.secondsFromJan1st) annotation(
    Line(points = {{-698, 4}, {-479, 4}, {-479, 32}, {-136, 32}}, color = {0, 0, 127}));
  connect(Time, directTitledSurface_f_CloTime.secondsFromJan1st) annotation(
    Line(points = {{-698, 4}, {-402, 4}, {-402, 61}, {-138, 61}}, color = {0, 0, 127}));
  connect(SolDirN, directTitledSurface_f_CloTime.dirSol) annotation(
    Line(points = {{-694, 64}, {-322, 64}, {-322, 75}, {-138, 75}}, color = {0, 0, 127}));
  connect(H1, solGai.HDirTil) annotation(
    Line(points = {{-30, 62}, {-14, 62}, {-14, 8}, {-6, 8}}, color = {0, 0, 127}));
  connect(inc, solGai.incAng) annotation(
    Line(points = {{-28, 32}, {-14, 32}, {-14, 4}, {-6, 4}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    Icon(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}}), graphics = {Ellipse(origin = {-107, 0}, extent = {{-1, -2}, {1, 2}}), Ellipse(origin = {0, 7}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 95}, {100, -95}})}),
    version = "",
    uses);
end solCol;
