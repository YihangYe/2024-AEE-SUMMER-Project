model F1
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum(redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Air, QCon_flow_max(displayUnit = "kW"), QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal(displayUnit = "kPa") = 800, dp2_nominal(displayUnit = "kPa") = 2800, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-145, 75}, extent = {{-13, -11}, {13, 11}})));
  Modelica.Blocks.Sources.Constant T(k = 273.15 + 20) annotation(
    Placement(transformation(origin = {-266, 108}, extent = {{-6, -6}, {6, 6}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum1(redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Air, QCon_flow_max(displayUnit = "kW"), QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal = 800000, dp2_nominal = 2800000, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-145, 42}, extent = {{-13, -12}, {13, 12}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum11(redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Air, QCon_flow_max(displayUnit = "kW"), QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal = 800000, dp2_nominal = 2800000, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-144, 10}, extent = {{-14, -12}, {14, 12}})));
  Buildings.Fluid.Sources.MassFlowSource_T boundary1(redeclare package Medium = Buildings.Media.Air, T = 293.15, m_flow = 100, nPorts = 3) annotation(
    Placement(transformation(origin = {-100, 94}, extent = {{8, -8}, {-8, 8}}, rotation = -0)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-210, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal1(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-210, 2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal2(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-86, 34}, extent = {{10, -10}, {-10, 10}}, rotation = -270)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal11(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-86, 2}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {47.286, -38.7647}, extent = {{-16.6471, -15}, {16.6471, 15}})));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(
    Placement(transformation(origin = {-118, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {8, -38}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou1(redeclare package Medium = Buildings.Media.Air, nPorts = 3) annotation(
    Placement(transformation(origin = {-202, 94}, extent = {{-10, -10}, {10, 10}}, rotation = -0)));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan1(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {49.286, -92.765}, extent = {{-16.6471, -15}, {16.6471, 15}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear1(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {6, -92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal111(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {96, -78}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan11(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-282.714, -76.7647}, extent = {{16.6471, -15}, {-16.6471, 15}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear11(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-234, -78}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan111(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-282.714, -132.765}, extent = {{16.6471, -15}, {-16.6471, 15}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear111(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-232, -132}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const111(k = 1) annotation(
    Placement(transformation(origin = {-97, -85}, extent = {{11, -11}, {-11, 11}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow pum(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, energyDynamics = Modelica.Fluid.Types.Dynamics.SteadyState, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {26, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.HeatTransfer.Sources.FixedTemperature rooT(T(displayUnit = "degC") = 363.15) annotation(
    Placement(transformation(origin = {174, 88}, extent = {{40, -92}, {20, -72}})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor TTan annotation(
    Placement(transformation(origin = {82, 82}, extent = {{0, 0}, {-20, 20}})));
  Buildings.Fluid.Storage.ExpansionVessel exp(redeclare package Medium = Buildings.Media.Water, V_start = 10) annotation(
    Placement(transformation(origin = {10, 28}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TOut(redeclare package Medium = Buildings.Media.Water, T_start(displayUnit = "K"), m_flow_nominal = 1) annotation(
    Placement(transformation(origin = {76, 52}, extent = {{30, 46}, {50, 66}})));
  Buildings.Fluid.Storage.StratifiedEnhancedInternalHex tan(CHex = 200, redeclare package Medium = Buildings.Media.Water, redeclare package MediumHex = Modelica.Media.Examples.TwoPhaseWater, Q_flow_nominal = 3000, THex_nominal = 323.15, TTan_nominal = 293.15, T_start = 293.15, VTan = 1.5, dExtHex = 0.01905, dIns = 0.07, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, energyDynamicsHex = Modelica.Fluid.Types.Dynamics.FixedInitial, hHex_a = 0.9, hHex_b = 0.65, hTan = 1.8, mHex_flow_nominal = 3000/20/4200, m_flow_nominal = 100, nSeg = 4) annotation(
    Placement(transformation(origin = {153, 75}, extent = {{-15, -15}, {15, 15}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TIn(redeclare package Medium = Buildings.Media.Water, m_flow_nominal = 1) annotation(
    Placement(transformation(origin = {70, 58}, extent = {{-34, 46}, {-14, 66}})));
  Modelica.Blocks.Math.Gain gain(k = 0.04) annotation(
    Placement(transformation(origin = {-8, 70}, extent = {{-8, -8}, {8, 8}}, rotation = 270)));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(columns = 2:7, fileName = "D:/Projectzza/CSET.txt", tableOnFile = true) annotation(
    Placement(transformation(origin = {-30, 170}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal12(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-332, -76}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
  solCol solCol1(redeclare package Medium = Buildings.Media.Water)  annotation(
    Placement(transformation(origin = {88, 116}, extent = {{-39.2, -39.2}, {39.2, 39.2}})));
  solPump solPump1 annotation(
    Placement(transformation(origin = {-8, 114}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant const1(k = 0)  annotation(
    Placement(transformation(origin = {33, 193}, extent = {{-5, -5}, {5, 5}})));
equation
  connect(T.y, heaPum.TSet) annotation(
    Line(points = {{-259, 108}, {-180.8, 108}, {-180.8, 84}, {-160.8, 84}}, color = {0, 0, 127}));
  connect(T.y, heaPum1.TSet) annotation(
    Line(points = {{-259, 108}, {-180.8, 108}, {-180.8, 53}, {-161, 53}}, color = {0, 0, 127}));
  connect(T.y, heaPum11.TSet) annotation(
    Line(points = {{-259, 108}, {-180.8, 108}, {-180.8, 20}, {-160.8, 20}}, color = {0, 0, 127}));
  connect(teeJunctionIdeal.port_2, teeJunctionIdeal1.port_1) annotation(
    Line(points = {{-210, 38}, {-210, 12}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal2.port_2, teeJunctionIdeal11.port_1) annotation(
    Line(points = {{-86, 24}, {-86, 12}}, color = {0, 127, 255}));
  connect(const.y, fan.m_flow_in) annotation(
    Line(points = {{-107, -30}, {-41, -30}, {-41, -21}, {47, -21}}, color = {0, 0, 127}));
  connect(const.y, valveLinear.opening) annotation(
    Line(points = {{-107, -30}, {8, -30}}, color = {0, 0, 127}));
  connect(valveLinear.port_b, fan.port_a) annotation(
    Line(points = {{18, -38}, {30, -38}}, color = {0, 127, 255}));
  connect(valveLinear1.port_b, fan1.port_a) annotation(
    Line(points = {{16, -92}, {22, -92}, {22, -93}, {33, -93}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal111.port_1, fan.port_b) annotation(
    Line(points = {{96, -68}, {96, -38}, {64, -38}}, color = {0, 127, 255}));
  connect(fan1.port_b, teeJunctionIdeal111.port_3) annotation(
    Line(points = {{65.9331, -92.765}, {65.9331, -78}, {86.0001, -78}}, color = {0, 127, 255}));
  connect(valveLinear11.port_b, fan11.port_a) annotation(
    Line(points = {{-244, -78}, {-266, -78}, {-266, -77}}, color = {0, 127, 255}));
  connect(valveLinear111.port_b, fan111.port_a) annotation(
    Line(points = {{-242, -132}, {-266, -132}}, color = {0, 127, 255}));
  connect(const111.y, fan11.m_flow_in) annotation(
    Line(points = {{-109.1, -85}, {-109.1, -50}, {-283, -50}, {-283, -59}}, color = {0, 0, 127}));
  connect(const111.y, valveLinear11.opening) annotation(
    Line(points = {{-109.1, -85}, {-109.1, -62}, {-234.2, -62}, {-234.2, -70}}, color = {0, 0, 127}));
  connect(exp.port_a, tan.portHex_b) annotation(
    Line(points = {{10, 18}, {10, 16}, {82, 16}, {82, 63}, {138, 63}}, color = {0, 127, 255}));
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
  connect(rooT.port, tan.heaPorSid) annotation(
    Line(points = {{194, 6}, {182, 6}, {182, 7}, {181.7, 7}, {181.7, 75}, {161, 75}}, color = {191, 0, 0}));
  connect(tan.heaPorVol[3], TTan.port) annotation(
    Line(points = {{153, 75}, {82, 75}, {82, 92}}, color = {0, 0, 127}));
  connect(const111.y, valveLinear111.opening) annotation(
    Line(points = {{-109.1, -85}, {-208.1, -85}, {-208.1, -124}, {-232.1, -124}}, color = {0, 0, 127}));
  connect(const111.y, fan111.m_flow_in) annotation(
    Line(points = {{-109.1, -85}, {-208.1, -85}, {-208.1, -114}, {-282.1, -114}}, color = {0, 0, 127}));
  connect(const.y, valveLinear1.opening) annotation(
    Line(points = {{-107, -30}, {-41, -30}, {-41, -84}, {5, -84}}, color = {0, 0, 127}));
  connect(const.y, fan1.m_flow_in) annotation(
    Line(points = {{-107, -30}, {-41, -30}, {-41, -74}, {49, -74}}, color = {0, 0, 127}));
  connect(heaPum.port_b1, teeJunctionIdeal2.port_1) annotation(
    Line(points = {{-132, 82}, {-86, 82}, {-86, 44}}, color = {0, 127, 255}));
  connect(heaPum1.port_b1, teeJunctionIdeal2.port_3) annotation(
    Line(points = {{-132, 50}, {-102, 50}, {-102, 34}, {-96, 34}}, color = {0, 127, 255}));
  connect(heaPum11.port_b1, teeJunctionIdeal11.port_3) annotation(
    Line(points = {{-130, 18}, {-114, 18}, {-114, 2}, {-96, 2}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal.port_1, heaPum.port_a1) annotation(
    Line(points = {{-210, 58}, {-210, 82}, {-158, 82}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal.port_3, heaPum1.port_a1) annotation(
    Line(points = {{-200, 48}, {-180, 48}, {-180, 50}, {-158, 50}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal1.port_3, heaPum11.port_a1) annotation(
    Line(points = {{-200, 2}, {-190, 2}, {-190, 18}, {-158, 18}}, color = {0, 127, 255}));
  connect(boundary1.ports[1], heaPum.port_a2) annotation(
    Line(points = {{-108, 94}, {-114, 94}, {-114, 68}, {-132, 68}}, color = {0, 127, 255}));
  connect(bou1.ports[1], heaPum.port_b2) annotation(
    Line(points = {{-192, 94}, {-186, 94}, {-186, 68}, {-158, 68}}, color = {0, 127, 255}));
  connect(boundary1.ports[2], heaPum1.port_a2) annotation(
    Line(points = {{-108, 94}, {-114, 94}, {-114, 34}, {-132, 34}}, color = {0, 127, 255}));
  connect(bou1.ports[2], heaPum1.port_b2) annotation(
    Line(points = {{-192, 94}, {-186, 94}, {-186, 34}, {-158, 34}}, color = {0, 127, 255}));
  connect(boundary1.ports[3], heaPum11.port_a2) annotation(
    Line(points = {{-108, 94}, {-114, 94}, {-114, 2}, {-130, 2}}, color = {0, 127, 255}));
  connect(bou1.ports[3], heaPum11.port_b2) annotation(
    Line(points = {{-192, 94}, {-186, 94}, {-186, 2}, {-158, 2}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal11.port_2, valveLinear.port_a) annotation(
    Line(points = {{-86, -8}, {-86, -38}, {-2, -38}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal11.port_2, valveLinear1.port_a) annotation(
    Line(points = {{-86, -8}, {-86, -92}, {-4, -92}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal111.port_2, tan.port_a) annotation(
    Line(points = {{96, -88}, {96, -100}, {118, -100}, {118, 76}, {138, 76}}, color = {0, 127, 255}));
  connect(tan.port_b, valveLinear111.port_a) annotation(
    Line(points = {{168, 76}, {168, -132}, {-222, -132}}, color = {0, 127, 255}));
  connect(tan.port_b, valveLinear11.port_a) annotation(
    Line(points = {{168, 76}, {168, -132}, {-208, -132}, {-208, -78}, {-224, -78}}, color = {0, 127, 255}));
  connect(fan111.port_b, teeJunctionIdeal12.port_1) annotation(
    Line(points = {{-300, -132}, {-332, -132}, {-332, -86}}, color = {0, 127, 255}));
  connect(fan11.port_b, teeJunctionIdeal12.port_3) annotation(
    Line(points = {{-300, -76}, {-322, -76}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal12.port_2, teeJunctionIdeal1.port_2) annotation(
    Line(points = {{-332, -66}, {-332, -26}, {-210, -26}, {-210, -8}}, color = {0, 127, 255}));
  connect(TIn.port_b, solCol1.port_a) annotation(
    Line(points = {{56, 114}, {70, 114}, {70, 116}, {84, 116}}, color = {0, 127, 255}));
  connect(solCol1.port_b, TOut.port_a) annotation(
    Line(points = {{92, 116}, {92, 105.5}, {106, 105.5}, {106, 108}}, color = {0, 127, 255}));
  connect(solPump1.y, gain.u) annotation(
    Line(points = {{-8, 102}, {-8, 80}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[5], solPump1.HSolDirN) annotation(
    Line(points = {{-18, 170}, {-2, 170}, {-2, 126}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[2], solPump1.TEnv1) annotation(
    Line(points = {{-18, 170}, {-6, 170}, {-6, 126}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[2], solPump1.Tin) annotation(
    Line(points = {{-18, 170}, {-10, 170}, {-10, 126}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[1], solCol1.Time) annotation(
    Line(points = {{-18, 170}, {-18, 120}, {83, 120}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[5], solCol1.SolDirN) annotation(
    Line(points = {{-18, 170}, {66, 170}, {66, 118}, {83, 118}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[6], solCol1.SolDifH) annotation(
    Line(points = {{-18, 170}, {66, 170}, {66, 112}, {83, 112}}, color = {0, 0, 127}));
  connect(combiTimeTable.y[2], solCol1.TEnv) annotation(
    Line(points = {{-18, 170}, {66, 170}, {66, 109}, {83, 109}}, color = {0, 0, 127}));
  connect(const1.y, solCol1.shaCoe_in) annotation(
    Line(points = {{38, 194}, {62, 194}, {62, 115}, {83, 115}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    Icon(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    version = "",
    uses(Modelica(version = "3.2.3")));
end F1;
