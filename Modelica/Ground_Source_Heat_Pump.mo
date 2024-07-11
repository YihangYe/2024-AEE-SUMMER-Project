model Ground_Source_Heat_Pump
  Buildings.Fluid.Geothermal.Borefields.OneUTube borFie(redeclare package Medium = Buildings.Media.Water, borFieDat = Buildings.Fluid.Geothermal.Borefields.Data.Borefield.Example()) annotation(
    Placement(transformation(origin = {-62, -78}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {40, -46}, extent = {{10, -10}, {-10, 10}}, rotation = -180)));
  Modelica.Fluid.Fittings.TeeJunctionIdeal teeJunctionIdeal1(redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-8, -46}, extent = {{10, -10}, {-10, 10}}, rotation = -180)));
  Buildings.Fluid.Geothermal.Borefields.OneUTube borFie1(redeclare package Medium = Buildings.Media.Water, borFieDat = Buildings.Fluid.Geothermal.Borefields.Data.Borefield.Example()) annotation(
    Placement(transformation(origin = {10, -78}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Geothermal.Borefields.OneUTube borFie2(redeclare package Medium = Buildings.Media.Water, borFieDat = Buildings.Fluid.Geothermal.Borefields.Data.Borefield.Example()) annotation(
    Placement(transformation(origin = {-28, -78}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.HeatPumps.Carnot_TCon heaPum(redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Water, etaCarnot_nominal = 0.8, m1_flow_nominal = 1, m2_flow_nominal = 1, QCon_flow_nominal = 1) annotation(
    Placement(transformation(origin = {6, 4}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Fluid.Sources.FixedBoundary boundary1(nPorts = 3, T(displayUnit = "degC") = 283.15, redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {-120, -46}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou(nPorts = 1, redeclare package Medium = Buildings.Media.Water) annotation(
    Placement(transformation(origin = {84, 60}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 273.15 + 10) annotation(
    Placement(transformation(origin = {-62, 86}, extent = {{-6, -6}, {6, 6}})));
  Buildings.Fluid.Movers.FlowControlled_m_flow fan(redeclare package Medium = Buildings.Media.Water, m_flow_nominal = 1) annotation(
    Placement(transformation(origin = {76, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Sources.Constant const1(k = 1) annotation(
    Placement(transformation(origin = {-126, -8}, extent = {{-6, -6}, {6, 6}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTem(redeclare package Medium = Buildings.Media.Water, m_flow_nominal = 1) annotation(
    Placement(transformation(origin = {-78, 10}, extent = {{-8, -8}, {8, 8}}, rotation = 180)));
  Buildings.Fluid.Sources.MassFlowSource_T boundary2(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {-218, 46}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou2(redeclare package Medium = Buildings.Media.Water, nPorts = 1) annotation(
    Placement(transformation(origin = {-162, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -0)));
equation
  connect(borFie.port_b, teeJunctionIdeal1.port_1) annotation(
    Line(points = {{-52, -78}, {-44, -78}, {-44, -46}, {-18, -46}}, color = {0, 127, 255}));
  connect(borFie2.port_b, teeJunctionIdeal1.port_3) annotation(
    Line(points = {{-18, -78}, {-8, -78}, {-8, -56}}, color = {0, 127, 255}));
  connect(teeJunctionIdeal1.port_2, teeJunctionIdeal.port_1) annotation(
    Line(points = {{2, -46}, {30, -46}}, color = {0, 127, 255}));
  connect(borFie1.port_b, teeJunctionIdeal.port_3) annotation(
    Line(points = {{20, -78}, {20, -77.5}, {40, -77.5}, {40, -56}}, color = {0, 127, 255}));
  connect(boundary1.ports[1], borFie.port_a) annotation(
    Line(points = {{-110, -46}, {-86, -46}, {-86, -78}, {-72, -78}}, color = {0, 127, 255}));
  connect(boundary1.ports[2], borFie2.port_a) annotation(
    Line(points = {{-110, -46}, {-44, -46}, {-44, -78}, {-38, -78}}, color = {0, 127, 255}));
  connect(boundary1.ports[3], borFie1.port_a) annotation(
    Line(points = {{-110, -46}, {-86, -46}, {-86, -66}, {-8, -66}, {-8, -78}, {0, -78}}, color = {0, 127, 255}));
  connect(const.y, heaPum.TSet) annotation(
    Line(points = {{-55, 86}, {20.6, 86}, {20.6, 23}, {21.3, 23}, {21.3, 13}, {18, 13}}, color = {0, 0, 127}));
  connect(teeJunctionIdeal.port_2, fan.port_a) annotation(
    Line(points = {{50, -46}, {76, -46}, {76, -18}}, color = {0, 127, 255}));
  connect(const1.y, fan.m_flow_in) annotation(
    Line(points = {{-119, -8}, {64, -8}}, color = {0, 0, 127}));
  connect(fan.port_b, heaPum.port_a1) annotation(
    Line(points = {{76, 2}, {76, 10}, {16, 10}}, color = {0, 127, 255}));
  connect(heaPum.port_b1, senTem.port_a) annotation(
    Line(points = {{-4, 10}, {-70, 10}}, color = {0, 127, 255}));
  connect(senTem.port_b, bou2.ports[1]) annotation(
    Line(points = {{-86, 10}, {-152, 10}}, color = {0, 127, 255}));
  connect(boundary2.ports[1], heaPum.port_a2) annotation(
    Line(points = {{-208, 46}, {-98, 46}, {-98, -2}, {-4, -2}}, color = {0, 127, 255}));
  connect(heaPum.port_b2, bou.ports[1]) annotation(
    Line(points = {{16, -2}, {42, -2}, {42, 60}, {74, 60}}, color = {0, 127, 255}));
  annotation(
    uses(Buildings(version = "8.1.3"), Modelica(version = "3.2.3")),
    Diagram);
end Ground_Source_Heat_Pump;
