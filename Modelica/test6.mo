model test6
  Modelica.Blocks.Sources.RealExpression Tset(y = 273.15 + 20) annotation(
    Placement(transformation(origin = {54, 74}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant annotation(
    Placement(transformation(origin = {153.6, 106.2}, extent = {{-103.6, -4.2}, {-89.6, 9.8}})));
  Buildings.Fluid.Chillers.Data.AbsorptionIndirectSteam.Generic per(EIRP = {1, 0, 0}, PLRMax = 1, PLRMin = 0.15, P_nominal = 150, QEva_flow_nominal = -100000, capFunCon = {0.245507, 0.023614, 0.0000278, 0.000013}, capFunEva = {0.690571, 0.065571, -0.00289, 0}, dpCon_nominal = 10000, dpEva_nominal = 10000, genConT = {0.712019, -0.00478, 0.000864, -0.000013}, genEvaT = {0.995571, 0.046821, -0.01099, 0.000608}, genHIR = {0.18892, 0.968044, 1.119202, -0.5034}, mCon_flow_nominal = 1.1, mEva_flow_nominal = 0.247) annotation(
    Placement(transformation(origin = {344, 188}, extent = {{-54, 48}, {-34, 28}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum(redeclare package Medium1 = Buildings.Media.Air, redeclare package Medium2 = Buildings.Media.Water, QCon_flow_max(displayUnit = "kW") = 14.4, QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal(displayUnit = "kPa") = 800, dp2_nominal(displayUnit = "kPa") = 2800, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-395, 151}, extent = {{-13, -11}, {13, 11}})));
  Modelica.Blocks.Sources.Constant T(k = 273.15 + 20) annotation(
    Placement(transformation(origin = {-454, 184}, extent = {{-6, -6}, {6, 6}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum1(redeclare package Medium1 = Buildings.Media.Air, redeclare package Medium2 = Buildings.Media.Water, QCon_flow_max(displayUnit = "kW") = 14.4, QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal = 800000, dp2_nominal = 2800000, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-395, 118}, extent = {{-13, -12}, {13, 12}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum11(redeclare package Medium1 = Buildings.Media.Air, redeclare package Medium2 = Buildings.Media.Water, QCon_flow_max(displayUnit = "kW") = 14.4, QCon_flow_nominal = 10000, dTCon_nominal = 10, dTEva_nominal = -5, dp1_nominal = 800000, dp2_nominal = 2800000, etaCarnot_nominal = 0.4, m1_flow_nominal = 100, m2_flow_nominal = 200, use_eta_Carnot_nominal = true) annotation(
    Placement(transformation(origin = {-394, 86}, extent = {{-14, -12}, {14, 12}})));
  Buildings.Fluid.Sources.MassFlowSource_T boundary1(redeclare package Medium = Buildings.Media.Air, T = 293.15, m_flow = 100, nPorts = 3) annotation(
    Placement(transformation(origin = {-456, 158}, extent = {{-8, -8}, {8, 8}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-460, 124}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal1(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-460, 78}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow pum(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, energyDynamics = Modelica.Fluid.Types.Dynamics.SteadyState, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-236, 106}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Buildings.HeatTransfer.Sources.FixedTemperature rooT(T(displayUnit = "degC") = 363.15) annotation(
    Placement(transformation(origin = {-88, 136}, extent = {{40, -92}, {20, -72}})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor TTan annotation(
    Placement(transformation(origin = {-186, 112}, extent = {{0, 0}, {-20, 20}})));
  Buildings.Fluid.Storage.ExpansionVessel exp(redeclare package Medium = Buildings.Media.Water, V_start = 10) annotation(
    Placement(transformation(origin = {-252, 76}, extent = {{-10, -10}, {10, 10}})));
  Buildings.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(computeWetBulbTemperature = false, filNam = "D:/Projectzza/Buildings 8.1.3/Resources/weatherdata/CHN_Zhejiang.Dinghai.584770_CSWD.mos") annotation(
    Placement(transformation(origin = {-250, 122}, extent = {{-30, 80}, {-10, 100}})));
  Buildings.Fluid.SolarCollectors.ASHRAE93 solCol(redeclare package Medium = Buildings.Media.Water, azi = 0, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, lat = 2.121685943242005, nColType = Buildings.Fluid.SolarCollectors.Types.NumberSelection.Area, nPanels = 150, nSeg = 9, per = Buildings.Fluid.SolarCollectors.Data.GlazedFlatPlate.FP_SolahartKf(), rho = 0.2, shaCoe = 0, sysConfig = Buildings.Fluid.SolarCollectors.Types.SystemConfiguration.Series, til = 0.78539816339745, totalArea = 300) annotation(
    Placement(transformation(origin = {-180, 146}, extent = {{-2, 46}, {18, 66}})));
  Buildings.Fluid.SolarCollectors.Controls.SolarPumpController pumCon(per = Buildings.Fluid.SolarCollectors.Data.GlazedFlatPlate.FP_ThermaLiteHS20()) annotation(
    Placement(transformation(origin = {-266, 162}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Buildings.Fluid.Sensors.TemperatureTwoPort TOut(redeclare package Medium = Buildings.Media.Water, T_start(displayUnit = "K"), m_flow_nominal = solCol.m_flow_nominal) annotation(
    Placement(transformation(origin = {-186, 112}, extent = {{30, 46}, {50, 66}})));
  Buildings.Fluid.Storage.StratifiedEnhancedInternalHex tan(CHex = 200, redeclare package Medium = Buildings.Media.Water, redeclare package MediumHex = Modelica.Media.Examples.TwoPhaseWater, Q_flow_nominal = 3000, THex_nominal = 323.15, TTan_nominal = 293.15, T_start = 293.15, VTan = 1.5, dExtHex = 0.01905, dIns = 0.07, energyDynamics = Modelica.Fluid.Types.Dynamics.FixedInitial, energyDynamicsHex = Modelica.Fluid.Types.Dynamics.FixedInitial, hHex_a = 0.9, hHex_b = 0.65, hTan = 1.8, mHex_flow_nominal = 3000/20/4200, m_flow_nominal = 100, nSeg = 4) annotation(
    Placement(transformation(origin = {-89, 99}, extent = {{-15, -15}, {15, 15}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TIn(redeclare package Medium = Buildings.Media.Water, m_flow_nominal = solCol.m_flow_nominal) annotation(
    Placement(transformation(origin = {-192, 106}, extent = {{-34, 46}, {-14, 66}})));
  Modelica.Blocks.Math.Gain gain(k = 0.04) annotation(
    Placement(transformation(origin = {-266, 124}, extent = {{-8, -8}, {8, 8}}, rotation = 270)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal2(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-336, 110}, extent = {{10, -10}, {-10, 10}}, rotation = -270)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal11(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-336, 78}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-404.714, 15.2353}, extent = {{-16.6471, -15}, {16.6471, 15}})));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(
    Placement(transformation(origin = {-556, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-444, 16}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {-434, -8}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou1(redeclare package Medium = Buildings.Media.Air, nPorts = 3) annotation(
    Placement(transformation(origin = {-322, 184}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan1(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-402.714, -38.7647}, extent = {{-16.6471, -15}, {16.6471, 15}})));
  Modelica.Blocks.Sources.Constant const1(k = 1) annotation(
    Placement(transformation(origin = {-554, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear1(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-446, -38}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou2(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {-428, -92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal111(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-358, -6}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan11(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-244.714, 25.2353}, extent = {{16.6471, -15}, {-16.6471, 15}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear11(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-194, 26}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou21(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {-216, 4}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan111(redeclare package Medium = Buildings.Media.Water, dp_nominal = 50000, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-242.714, -28.7647}, extent = {{16.6471, -15}, {-16.6471, 15}})));
  Modelica.Fluid.Valves.ValveLinear valveLinear111(redeclare package Medium = Buildings.Media.Water, dp_nominal = 999999999.9999999, m_flow_nominal = 100) annotation(
    Placement(transformation(origin = {-192, -28}, extent = {{10, -10}, {-10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou211(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {-212, -54}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal12(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-336, 26}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
  Modelica.Blocks.Sources.Constant const11(k = 1) annotation(
    Placement(transformation(origin = {-49, -21}, extent = {{11, -11}, {-11, 11}})));
  Modelica.Blocks.Sources.Constant const111(k = 1) annotation(
    Placement(transformation(origin = {-55, 15}, extent = {{11, -11}, {-11, 11}})));
  Buildings.Fluid.Sources.MassFlowSource_T boundary(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {56, 144}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Chillers.AbsorptionIndirectSteam chi(redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Water, dp1_nominal = 10000, dp2_nominal = 10000, m1_flow_nominal = 100000, m2_flow_nominal = -100000) annotation(
    Placement(transformation(origin = {218, 77}, extent = {{-16, -15}, {16, 15}})));
  Buildings.Fluid.Sources.Boundary_pT bou11(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {394, 144}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable annotation(
    Placement(transformation(origin = {-242, 198}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(T.y, heaPum.TSet) annotation(
    Line(points = {{-447.4, 184}, {-430.8, 184}, {-430.8, 160}, {-410.8, 160}}, color = {0, 0, 127}));
  connect(T.y, heaPum1.TSet) annotation(
    Line(points = {{-447.4, 184}, {-430.8, 184}, {-430.8, 128}, {-410.8, 128}}, color = {0, 0, 127}));
  connect(T.y, heaPum11.TSet) annotation(
    Line(points = {{-447.4, 184}, {-430.8, 184}, {-430.8, 96}, {-410.8, 96}}, color = {0, 0, 127}));
  connect(boundary1.ports[1], heaPum.port_a1) annotation(
    Line(points = {{-448, 158}, {-408, 158}}, color = {0, 127, 255}));
  connect(boundary1.ports[2], heaPum1.port_a1) annotation(
    Line(points = {{-448, 158}, {-430, 158}, {-430, 126}, {-408, 126}}, color = {0, 127, 255}));
  connect(heaPum.port_b2, teeJunctionIdeal.port_1) annotation(
    Line(points = {{-408, 144.4}, {-460, 144.4}, {-460, 134}}, color = {0, 127, 255}));
  connect(heaPum1.port_b2, teeJunctionIdeal.port_3) annotation(
    Line(points = {{-408, 110.8}, {-440, 110.8}, {-440, 124}, {-450, 124}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal.port_2, teeJunctionIdeal1.port_1) annotation(
    Line(points = {{-460, 114}, {-460, 88}}, color = {0, 127, 255}));
  connect(heaPum11.port_b2, teeJunctionIdeal1.port_3) annotation(
    Line(points = {{-408, 78.8}, {-429, 78.8}, {-429, 78}, {-450, 78}}, color = {0, 127, 255}));
  connect(boundary1.ports[3], heaPum11.port_a1) annotation(
    Line(points = {{-448, 158}, {-430, 158}, {-430, 94}, {-408, 94}}, color = {0, 127, 255}));
  connect(exp.port_a, tan.portHex_b) annotation(
    Line(points = {{-252, 66}, {-252, 64}, {-180, 64}, {-180, 87}, {-104, 87}}, color = {0, 127, 255}));
  connect(TIn.port_b, solCol.port_a) annotation(
    Line(points = {{-206, 162}, {-194, 162}, {-194, 202}, {-182, 202}}, color = {0, 127, 255}));
  connect(pum.port_a, exp.port_a) annotation(
    Line(points = {{-236, 96}, {-236, 66}, {-252, 66}}, color = {0, 127, 255}));
  connect(pum.port_b, TIn.port_a) annotation(
    Line(points = {{-236, 116}, {-236, 162}, {-226, 162}}, color = {0, 127, 255}));
  connect(rooT.port, tan.heaPorTop) annotation(
    Line(points = {{-68, 54}, {-180, 54}, {-180, 110}, {-86, 110}}, color = {191, 0, 0}));
  connect(TOut.port_b, tan.portHex_a) annotation(
    Line(points = {{-136, 168}, {-132, 168}, {-132, 93}, {-104, 93}}, color = {0, 127, 255}));
  connect(gain.y, pum.m_flow_in) annotation(
    Line(points = {{-266, 115.2}, {-266, 106}, {-248, 106}}, color = {0, 0, 127}));
  connect(pumCon.y, gain.u) annotation(
    Line(points = {{-266, 150.2}, {-266, 133.6}}, color = {0, 0, 127}));
  connect(rooT.port, tan.heaPorSid) annotation(
    Line(points = {{-68, 54}, {-80, 54}, {-80, 55}, {-80.3, 55}, {-80.3, 99}, {-81, 99}}, color = {191, 0, 0}));
  connect(TTan.T, pumCon.TIn) annotation(
    Line(points = {{-206, 122}, {-252, 122}, {-252, 184}, {-270, 184}, {-270, 174}}, color = {0, 0, 127}));
  connect(weaDat.weaBus, pumCon.weaBus) annotation(
    Line(points = {{-260, 212}, {-260, 172.2}}, color = {255, 204, 51}, thickness = 0.5));
  connect(tan.heaPorVol[3], TTan.port) annotation(
    Line(points = {{-89, 99}, {-89, 59.8875}, {-180, 59.8875}, {-180, 121.888}, {-186, 121.888}}, color = {191, 0, 0}));
  connect(weaDat.weaBus, solCol.weaBus) annotation(
    Line(points = {{-260, 212}, {-182, 212}}, color = {255, 204, 51}, thickness = 0.5));
  connect(solCol.port_b, TOut.port_a) annotation(
    Line(points = {{-164, 202}, {-162, 168}, {-156, 168}}, color = {0, 127, 255}));
  connect(heaPum.port_a2, teeJunctionIdeal2.port_1) annotation(
    Line(points = {{-382, 144.4}, {-336, 144.4}, {-336, 120.4}}, color = {0, 127, 255}));
  connect(heaPum1.port_a2, teeJunctionIdeal2.port_3) annotation(
    Line(points = {{-382, 110.8}, {-346, 110.8}}, color = {0, 127, 255}));
  connect(heaPum11.port_a2, teeJunctionIdeal11.port_3) annotation(
    Line(points = {{-380, 78.8}, {-360, 78.8}, {-360, 78}, {-346, 78}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal2.port_2, teeJunctionIdeal11.port_1) annotation(
    Line(points = {{-336, 100}, {-336, 88}}, color = {0, 127, 255}));
  connect(const.y, fan.m_flow_in) annotation(
    Line(points = {{-545, 32}, {-493, 32}, {-493, 33}, {-405, 33}}, color = {0, 0, 127}));
  connect(teeJunctionIdeal1.port_2, valveLinear.port_a) annotation(
    Line(points = {{-460, 68}, {-462, 68}, {-462, 16}, {-454, 16}}, color = {0, 127, 255}));
  connect(const.y, valveLinear.opening) annotation(
    Line(points = {{-545, 32}, {-545, 24}, {-444, 24}}, color = {0, 0, 127}));
  connect(valveLinear.port_b, fan.port_a) annotation(
    Line(points = {{-434, 16}, {-422, 16}}, color = {0, 127, 255}));
  connect(bou.ports[1], fan.port_a) annotation(
    Line(points = {{-424, -8}, {-422, -8}, {-422, 16}}, color = {0, 127, 255}));
  connect(heaPum.port_b1, bou1.ports[1]) annotation(
    Line(points = {{-382, 157.6}, {-348, 157.6}, {-348, 183.6}, {-332, 183.6}}, color = {0, 127, 255}));
  connect(heaPum1.port_b1, bou1.ports[2]) annotation(
    Line(points = {{-382, 125.2}, {-348, 125.2}, {-348, 183.2}, {-332, 183.2}}, color = {0, 127, 255}));
  connect(heaPum11.port_b1, bou1.ports[3]) annotation(
    Line(points = {{-380, 93.2}, {-348, 93.2}, {-348, 183.2}, {-332, 183.2}}, color = {0, 127, 255}));
  connect(const1.y, fan1.m_flow_in) annotation(
    Line(points = {{-543, -22}, {-493, -22}, {-493, -21}, {-403, -21}}, color = {0, 0, 127}));
  connect(const1.y, valveLinear1.opening) annotation(
    Line(points = {{-543, -22}, {-543, -30}, {-446, -30}}, color = {0, 0, 127}));
  connect(valveLinear1.port_b, fan1.port_a) annotation(
    Line(points = {{-436, -38}, {-430, -38}, {-430, -39}, {-419, -39}}, color = {0, 127, 255}));
  connect(bou2.ports[1], fan1.port_a) annotation(
    Line(points = {{-418, -92}, {-418, -39}, {-419, -39}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal1.port_2, valveLinear1.port_a) annotation(
    Line(points = {{-460, 68}, {-466, 68}, {-466, -38}, {-456, -38}}));
  connect(teeJunctionIdeal111.port_1, fan.port_b) annotation(
    Line(points = {{-358, 4}, {-358, 16}, {-388, 16}}, color = {0, 127, 255}));
  connect(fan1.port_b, teeJunctionIdeal111.port_3) annotation(
    Line(points = {{-386.067, -38.7647}, {-386.067, -5.7647}, {-368.067, -5.7647}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal111.port_2, tan.port_a) annotation(
    Line(points = {{-358, -16}, {-358, -46}, {-272, -46}, {-272, 99}, {-104, 99}}, color = {0, 127, 255}));
  connect(valveLinear11.port_b, fan11.port_a) annotation(
    Line(points = {{-204, 26}, {-228, 26}}, color = {0, 127, 255}));
  connect(fan11.port_a, bou21.ports[1]) annotation(
    Line(points = {{-228.067, 25.2353}, {-230.067, 25.2353}, {-230.067, 4}, {-226, 4}}, color = {0, 127, 255}));
  connect(valveLinear111.port_b, fan111.port_a) annotation(
    Line(points = {{-202, -28}, {-226, -28}}, color = {0, 127, 255}));
  connect(fan111.port_a, bou211.ports[1]) annotation(
    Line(points = {{-226.067, -28.7647}, {-228.067, -28.7647}, {-228.067, -54.765}, {-222.067, -54.765}}, color = {0, 127, 255}));
  connect(tan.port_b, valveLinear11.port_a) annotation(
    Line(points = {{-74, 99}, {-74, 25}, {-184, 25}}, color = {0, 127, 255}));
  connect(tan.port_b, valveLinear111.port_a) annotation(
    Line(points = {{-74, 99}, {-74, -29}, {-182, -29}}, color = {0, 127, 255}));
  connect(fan111.port_b, teeJunctionIdeal12.port_1) annotation(
    Line(points = {{-259.361, -28.7647}, {-259.361, 16}, {-336, 16}}, color = {0, 127, 255}));
  connect(fan11.port_b, teeJunctionIdeal12.port_3) annotation(
    Line(points = {{-261.361, 25.2353}, {-305.361, 25.2353}, {-305.361, 26}, {-326, 26}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal12.port_2, teeJunctionIdeal11.port_2) annotation(
    Line(points = {{-336, 36}, {-336, 68}}, color = {0, 127, 255}));
  connect(const11.y, fan111.m_flow_in) annotation(
    Line(points = {{-61.1, -21}, {-190.1, -21}, {-190.1, -10}, {-242.1, -10}}, color = {0, 0, 127}));
  connect(const11.y, valveLinear111.opening) annotation(
    Line(points = {{-61.1, -21}, {-61.1, -20}, {-192.1, -20}}, color = {0, 0, 127}));
  connect(const111.y, fan11.m_flow_in) annotation(
    Line(points = {{-67.1, 15}, {-168.1, 15}, {-168.1, 54}, {-244.1, 54}, {-244.1, 44}}, color = {0, 0, 127}));
  connect(const111.y, valveLinear11.opening) annotation(
    Line(points = {{-67.1, 15}, {-168.1, 15}, {-168.1, 42}, {-194.1, 42}, {-194.1, 34}}, color = {0, 0, 127}));
  connect(booleanConstant.y, chi.on) annotation(
    Line(points = {{65, 109}, {162, 109}, {162, 80}, {200, 80}}, color = {255, 0, 255}));
  connect(Tset.y, chi.TSet) annotation(
    Line(points = {{65, 74}, {200, 74}}, color = {0, 0, 127}));
  connect(tan.port_b, chi.port_a2) annotation(
    Line(points = {{-74, 100}, {22, 100}, {22, -50}, {266, -50}, {266, 68}, {234, 68}}, color = {0, 127, 255}));
  connect(chi.port_b2, tan.port_a) annotation(
    Line(points = {{202, 68}, {194, 68}, {194, -50}, {22, -50}, {22, 142}, {-104, 142}, {-104, 100}}, color = {0, 127, 255}));
  connect(boundary.ports[1], chi.port_a1) annotation(
    Line(points = {{66, 144}, {200, 144}, {200, 86}, {202, 86}}, color = {0, 127, 255}));
  connect(bou11.ports[1], chi.port_b1) annotation(
    Line(points = {{384, 144}, {234, 144}, {234, 86}}, color = {0, 127, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    Icon(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    version = "",
    uses(Buildings(version = "8.1.3"), Modelica(version = "3.2.3")));
end test6;
