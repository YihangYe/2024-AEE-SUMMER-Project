model RCU
  Modelica.Blocks.Interfaces.RealInput chw_T_in annotation(
    Placement(transformation(origin = {-14, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-86, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {-26, 22}, extent = {{-8, -8}, {8, 8}}, rotation = -90)));
  Modelica.Blocks.Sources.Constant const(k = 273.15)  annotation(
    Placement(transformation(origin = {-82, 22}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.Sources.Boundary_pT bou(use_T_in = true, nPorts = 1)  annotation(
    Placement(transformation(origin = {-18, -34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.Sources.Boundary_pT bou1(nPorts = 1)  annotation(
    Placement(transformation(origin = {-90, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Buildings.Fluid.MixingVolumes.MixingVolume vol(nPorts = 2)  annotation(
    Placement(transformation(origin = {-64, -32}, extent = {{-10, -10}, {10, 10}})));
  HVAC.AirSideEquipment.FCU.FCUSingleCoil_m fCUSingleCoil_m(redeclare package Medium1 = Buildings.Media.Water, redeclare package Medium2 = Buildings.Media.Air, dp_nominal_1 = 5000000000, dp_nominal_2 = 30000000, fcu_UA_nominal = 1500, m1_flow_nominal = 3.3, m2_flow_nominal = 3.9) annotation(
    Placement(transformation(origin = {-24, -83}, extent = {{-14, -13}, {14, 13}})));
equation
  connect(const.y, add.u2) annotation(
    Line(points = {{-71, 22}, {-50, 22}, {-50, 46}, {-31, 46}, {-31, 32}}, color = {0, 0, 127}));
  connect(chw_T_in, add.u1) annotation(
    Line(points = {{-14, 80}, {-14, 57}, {-21, 57}, {-21, 32}}, color = {0, 0, 127}));
  connect(add.y, bou.T_in) annotation(
    Line(points = {{-26, 13}, {-26, -10}, {-14, -10}, {-14, -22}}, color = {0, 0, 127}));
  connect(vol.ports[1], bou1.ports[1]) annotation(
    Line(points = {{-64, -42}, {-64, -60}, {-90, -60}, {-90, -18}}, color = {0, 127, 255}));
  connect(fCUSingleCoil_m.port_a1, bou.ports[1]) annotation(
    Line(points = {{-38, -75}, {-48, -75}, {-48, -56}, {-18, -56}, {-18, -44}}, color = {0, 127, 255}));
  connect(fCUSingleCoil_m.port_b1, vol.ports[2]) annotation(
    Line(points = {{-10, -75}, {10, -75}, {10, -112}, {-64, -112}, {-64, -42}}, color = {0, 127, 255}));

annotation(
    uses(Modelica(version = "3.2.3"), Buildings(version = "8.1.3")));
end RCU;
