model F1
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum(redeclare package Medium1 = Buildings.Media.Air, redeclare package Medium2 = Buildings.Media.Water, QCon_flow_max(displayUnit = "kW"), QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal(displayUnit = "kPa") = 800, dp2_nominal(displayUnit = "kPa") = 2800, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-145, 75}, extent = {{-13, -11}, {13, 11}})));
  Modelica.Blocks.Sources.Constant T(k = 273.15 + 20) annotation(
    Placement(transformation(origin = {-204, 108}, extent = {{-6, -6}, {6, 6}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum1(redeclare package Medium1 = Buildings.Media.Air, redeclare package Medium2 = Buildings.Media.Water, QCon_flow_max(displayUnit = "kW"), QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal = 800000, dp2_nominal = 2800000, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-145, 42}, extent = {{-13, -12}, {13, 12}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum11(redeclare package Medium1 = Buildings.Media.Air, redeclare package Medium2 = Buildings.Media.Water, QCon_flow_max(displayUnit = "kW"), QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal = 800000, dp2_nominal = 2800000, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-144, 10}, extent = {{-14, -12}, {14, 12}})));
  Buildings.Fluid.Sources.MassFlowSource_T boundary1(redeclare package Medium = Buildings.Media.Air, T = 293.15, m_flow = 100, nPorts = 3) annotation(
    Placement(transformation(origin = {-206, 82}, extent = {{-8, -8}, {8, 8}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-210, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal1(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-210, 2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal2(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-86, 34}, extent = {{10, -10}, {-10, 10}}, rotation = -270)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal11(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-86, 2}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-154.714, -60.7647}, extent = {{-16.6471, -15}, {16.6471, 15}})));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(
    Placement(transformation(origin = {-306, -44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-194, -60}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou1(redeclare package Medium = Buildings.Media.Air, nPorts = 3) annotation(
    Placement(transformation(origin = {-72, 108}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan1(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-152.714, -114.765}, extent = {{-16.6471, -15}, {16.6471, 15}})));
  Modelica.Blocks.Sources.Constant const1(k = 1) annotation(
    Placement(transformation(origin = {-308, -98}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear1(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-196, -114}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal111(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-106, -100}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan11(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {5.286, -50.7647}, extent = {{16.6471, -15}, {-16.6471, 15}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear11(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {56, -50}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan111(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {7.286, -104.765}, extent = {{16.6471, -15}, {-16.6471, 15}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear111(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {58, -104}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal12(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-86, -50}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
  Modelica.Blocks.Sources.Constant const11(k = 1) annotation(
    Placement(transformation(origin = {201, -97}, extent = {{11, -11}, {-11, 11}})));
  Modelica.Blocks.Sources.Constant const111(k = 1) annotation(
    Placement(transformation(origin = {195, -61}, extent = {{11, -11}, {-11, 11}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow pum(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, energyDynamics = Modelica.Fluid.Types.Dynamics.SteadyState, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {26, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.HeatTransfer.Sources.FixedTemperature rooT(T(displayUnit = "degC") = 363.15) annotation(
    Placement(transformation(origin = {174, 88}, extent = {{40, -92}, {20, -72}})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor TTan annotation(
    Placement(transformation(origin = {82, 82}, extent = {{0, 0}, {-20, 20}})));
  Buildings.Fluid.Storage.ExpansionVessel exp(redeclare package Medium = Buildings.Media.Water, V_start = 10) annotation(
    Placement(transformation(origin = {10, 28}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.SolarCollectors.ASHRAE93 solCol(redeclare package Medium = Buildings.Media.Water, azi = 0, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, lat = 2.121685943242005, nColType = Buildings.Fluid.SolarCollectors.Types.NumberSelection.Area, nPanels = 150, nSeg = 9, per = Buildings.Fluid.SolarCollectors.Data.GlazedFlatPlate.FP_SolahartKf(), rho = 0.2, shaCoe = 0, sysConfig = Buildings.Fluid.SolarCollectors.Types.SystemConfiguration.Series, til = 0.78539816339745, totalArea = 300) annotation(
    Placement(transformation(origin = {86, 88}, extent = {{-2, 46}, {18, 66}})));
  Buildings.Fluid.SolarCollectors.Controls.SolarPumpController pumCon(per = Buildings.Fluid.SolarCollectors.Data.GlazedFlatPlate.FP_ThermaLiteHS20()) annotation(
    Placement(transformation(origin = {-16.5, 107.5}, extent = {{-11.5, -10.5}, {11.5, 10.5}}, rotation = 270)));
  Buildings.Fluid.Sensors.TemperatureTwoPort TOut(redeclare package Medium = Buildings.Media.Water, T_start(displayUnit = "K"), m_flow_nominal = solCol.m_flow_nominal) annotation(
    Placement(transformation(origin = {76, 52}, extent = {{30, 46}, {50, 66}})));
  Buildings.Fluid.Storage.StratifiedEnhancedInternalHex tan(CHex = 200, redeclare package Medium = Buildings.Media.Water, redeclare package MediumHex = Modelica.Media.Examples.TwoPhaseWater, Q_flow_nominal = 3000, THex_nominal = 323.15, TTan_nominal = 293.15, T_start = 293.15, VTan = 1.5, dExtHex = 0.01905, dIns = 0.07, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, energyDynamicsHex = Modelica.Fluid.Types.Dynamics.FixedInitial, hHex_a = 0.9, hHex_b = 0.65, hTan = 1.8, mHex_flow_nominal = 3000/20/4200, m_flow_nominal = 100, nSeg = 4) annotation(
    Placement(transformation(origin = {153, 75}, extent = {{-15, -15}, {15, 15}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TIn(redeclare package Medium = Buildings.Media.Water, m_flow_nominal = solCol.m_flow_nominal) annotation(
    Placement(transformation(origin = {70, 58}, extent = {{-34, 46}, {-14, 66}})));
  Modelica.Blocks.Math.Gain gain(k = 0.04) annotation(
    Placement(transformation(origin = {-8, 70}, extent = {{-8, -8}, {8, 8}}, rotation = 270)));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(columns = 2:6, fileName = "D:/Projectzza/CSET_weather_epw_5min.txt", tableOnFile = true) annotation(
    Placement(transformation(origin = {-16, 170}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(T.y, heaPum.TSet) annotation(
    Line(points = {{-197.4, 108}, {-180.8, 108}, {-180.8, 84}, {-160.8, 84}}, color = {0, 0, 127}));
  connect(T.y, heaPum1.TSet) annotation(
    Line(points = {{-197.4, 108}, {-180.8, 108}, {-180.8, 52}, {-160.8, 52}}, color = {0, 0, 127}));
  connect(T.y, heaPum11.TSet) annotation(
    Line(points = {{-197.4, 108}, {-180.8, 108}, {-180.8, 20}, {-160.8, 20}}, color = {0, 0, 127}));
  connect(boundary1.ports[1], heaPum.port_a1) annotation(
    Line(points = {{-198, 82}, {-158, 82}}, color = {0, 127, 255}));
  connect(boundary1.ports[2], heaPum1.port_a1) annotation(
    Line(points = {{-198, 82}, {-180, 82}, {-180, 50}, {-158, 50}}, color = {0, 127, 255}));
  connect(heaPum.port_b2, teeJunctionIdeal.port_1) annotation(
    Line(points = {{-158, 68.4}, {-210, 68.4}, {-210, 58}}, color = {0, 127, 255}));
  connect(heaPum1.port_b2, teeJunctionIdeal.port_3) annotation(
    Line(points = {{-158, 34.8}, {-190, 34.8}, {-190, 48}, {-200, 48}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal.port_2, teeJunctionIdeal1.port_1) annotation(
    Line(points = {{-210, 38}, {-210, 12}}, color = {0, 127, 255}));
  connect(heaPum11.port_b2, teeJunctionIdeal1.port_3) annotation(
    Line(points = {{-158, 2.8}, {-179, 2.8}, {-179, 2}, {-200, 2}}, color = {0, 127, 255}));
  connect(boundary1.ports[3], heaPum11.port_a1) annotation(
    Line(points = {{-198, 82}, {-180, 82}, {-180, 18}, {-158, 18}}, color = {0, 127, 255}));
  connect(heaPum.port_a2, teeJunctionIdeal2.port_1) annotation(
    Line(points = {{-132, 68.4}, {-86, 68.4}, {-86, 44.4}}, color = {0, 127, 255}));
  connect(heaPum1.port_a2, teeJunctionIdeal2.port_3) annotation(
    Line(points = {{-132, 34.8}, {-96, 34.8}}, color = {0, 127, 255}));
  connect(heaPum11.port_a2, teeJunctionIdeal11.port_3) annotation(
    Line(points = {{-130, 2.8}, {-110, 2.8}, {-110, 2}, {-96, 2}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal2.port_2, teeJunctionIdeal11.port_1) annotation(
    Line(points = {{-86, 24}, {-86, 12}}, color = {0, 127, 255}));
  connect(const.y, fan.m_flow_in) annotation(
    Line(points = {{-295, -44}, {-243, -44}, {-243, -43}, {-155, -43}}, color = {0, 0, 127}));
  connect(teeJunctionIdeal1.port_2, valveLinear.port_a) annotation(
    Line(points = {{-210, -8}, {-212, -8}, {-212, -60}, {-204, -60}}, color = {0, 127, 255}));
  connect(const.y, valveLinear.opening) annotation(
    Line(points = {{-295, -44}, {-295, -52}, {-194, -52}}, color = {0, 0, 127}));
  connect(valveLinear.port_b, fan.port_a) annotation(
    Line(points = {{-184, -60}, {-172, -60}}, color = {0, 127, 255}));
  connect(heaPum.port_b1, bou1.ports[1]) annotation(
    Line(points = {{-132, 81.6}, {-98, 81.6}, {-98, 107.6}, {-82, 107.6}}, color = {0, 127, 255}));
  connect(heaPum1.port_b1, bou1.ports[2]) annotation(
    Line(points = {{-132, 49.2}, {-98, 49.2}, {-98, 107.2}, {-82, 107.2}}, color = {0, 127, 255}));
  connect(heaPum11.port_b1, bou1.ports[3]) annotation(
    Line(points = {{-130, 17.2}, {-98, 17.2}, {-98, 107.2}, {-82, 107.2}}, color = {0, 127, 255}));
  connect(const1.y, fan1.m_flow_in) annotation(
    Line(points = {{-297, -98}, {-243, -98}, {-243, -97}, {-153, -97}}, color = {0, 0, 127}));
  connect(const1.y, valveLinear1.opening) annotation(
    Line(points = {{-297, -98}, {-297, -106}, {-196, -106}}, color = {0, 0, 127}));
  connect(valveLinear1.port_b, fan1.port_a) annotation(
    Line(points = {{-186, -114}, {-180, -114}, {-180, -115}, {-169, -115}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal1.port_2, valveLinear1.port_a) annotation(
    Line(points = {{-210, -8}, {-212, -8}, {-212, -114}, {-206, -114}}));
  connect(teeJunctionIdeal111.port_1, fan.port_b) annotation(
    Line(points = {{-106, -90}, {-106, -60}, {-138, -60}}, color = {0, 127, 255}));
  connect(fan1.port_b, teeJunctionIdeal111.port_3) annotation(
    Line(points = {{-136.067, -114.765}, {-136.067, -100}, {-116, -100}}, color = {0, 127, 255}));
  connect(valveLinear11.port_b, fan11.port_a) annotation(
    Line(points = {{46, -50}, {22, -50}}, color = {0, 127, 255}));
  connect(valveLinear111.port_b, fan111.port_a) annotation(
    Line(points = {{48, -104}, {24, -104}}, color = {0, 127, 255}));
  connect(fan111.port_b, teeJunctionIdeal12.port_1) annotation(
    Line(points = {{-9.3611, -104.765}, {-9.3611, -60}, {-86, -60}}, color = {0, 127, 255}));
  connect(fan11.port_b, teeJunctionIdeal12.port_3) annotation(
    Line(points = {{-11.3611, -50.7647}, {-55.3611, -50.7647}, {-55.3611, -50}, {-76, -50}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal12.port_2, teeJunctionIdeal11.port_2) annotation(
    Line(points = {{-86, -40}, {-86, -8}}, color = {0, 127, 255}));
  connect(const11.y, fan111.m_flow_in) annotation(
    Line(points = {{188.9, -97}, {59.9, -97}, {59.9, -86}, {7.9, -86}}, color = {0, 0, 127}));
  connect(const11.y, valveLinear111.opening) annotation(
    Line(points = {{188.9, -97}, {188.9, -96}, {57.9, -96}}, color = {0, 0, 127}));
  connect(const111.y, fan11.m_flow_in) annotation(
    Line(points = {{182.9, -61}, {81.9, -61}, {81.9, -22}, {5.9, -22}, {5.9, -32}}, color = {0, 0, 127}));
  connect(const111.y, valveLinear11.opening) annotation(
    Line(points = {{182.9, -61}, {81.9, -61}, {81.9, -34}, {55.9, -34}, {55.9, -42}}, color = {0, 0, 127}));
  connect(exp.port_a, tan.portHex_b) annotation(
    Line(points = {{10, 18}, {10, 16}, {82, 16}, {82, 63}, {138, 63}}, color = {0, 127, 255}));
  connect(TIn.port_b, solCol.port_a) annotation(
    Line(points = {{56, 114}, {68, 114}, {68, 144}, {84, 144}}, color = {0, 127, 255}));
  connect(pum.port_a, exp.port_a) annotation(
    Line(points = {{26, 48}, {26, 18}, {10, 18}}, color = {0, 127, 255}));
  connect(pum.port_b, TIn.port_a) annotation(
    Line(points = {{26, 68}, {26, 114}, {36, 114}}, color = {0, 127, 255}));
  connect(rooT.port, tan.heaPorTop) annotation(
    Line(points = {{194, 6}, {82, 6}, {82, 86}, {156, 86}}, color = {191, 0, 0}));
  connect(TOut.port_b, tan.portHex_a) annotation(
    Line(points = {{126, 108}, {126, 69}, {138, 69}}, color = {0, 127, 255}));
  connect(gain.y, pum.m_flow_in) annotation(
    Line(points = {{-8, 61}, {-8, 58}, {14, 58}}, color = {0, 0, 127}));
  connect(pumCon.y, gain.u) annotation(
    Line(points = {{-16.5, 93.93}, {-16.5, 93.76}, {-8, 93.76}, {-8, 80}}, color = {0, 0, 127}));
  connect(rooT.port, tan.heaPorSid) annotation(
    Line(points = {{194, 6}, {182, 6}, {182, 7}, {181.7, 7}, {181.7, 75}, {161, 75}}, color = {191, 0, 0}));
  connect(tan.heaPorVol[3], TTan.port) annotation(
    Line(points = {{153, 75}, {82, 75}, {82, 92}}, color = {0, 0, 127}));
  connect(solCol.port_b, TOut.port_a) annotation(
    Line(points = {{104, 144}, {104, 128}, {106, 128}, {106, 108}}, color = {191, 0, 0}));
  connect(combiTimeTable.y[5], solCol.SolDifH) annotation(
    Line(points = {{-5, 170}, {37.5, 170}, {37.5, 149}, {76, 149}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[4], solCol.SolDirN) annotation(
    Line(points = {{-5, 170}, {4.5, 170}, {4.5, 146}, {76, 146}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[1], solCol.Time) annotation(
    Line(points = {{-5, 170}, {-8, 170}, {-8, 140}, {79, 140}}, color = {0, 0, 127}));
  connect(TTan.T, pumCon.Tin) annotation(
    Line(points = {{62, 92}, {8, 92}, {8, 134}, {-18, 134}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[2], pumCon.TEnv1) annotation(
    Line(points = {{-5, 170}, {17, 170}, {17, 120}, {-15, 120}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[2], solCol.TEnv) annotation(
    Line(points = {{-5, 170}, {24, 170}, {24, 150}, {81, 150}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[4], pumCon.HSolDirN) annotation(
    Line(points = {{-5, 170}, {11, 170}, {11, 122}, {-11, 122}}, color = {0, 0, 127}));
  connect(tan.port_b, valveLinear11.port_a) annotation(
    Line(points = {{168, 75}, {168, -51}, {66, -51}}, color = {0, 127, 255}));
  connect(tan.port_b, valveLinear111.port_a) annotation(
    Line(points = {{168, 75}, {176, 75}, {176, -105}, {68, -105}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal111.port_2, tan.port_a) annotation(
    Line(points = {{-106, -110}, {-42, -110}, {-42, -8}, {114, -8}, {114, 76}, {138, 76}}, color = {0, 127, 255}));
annotation(
    Diagram(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    Icon(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    version = "",
    uses);
end F1;
