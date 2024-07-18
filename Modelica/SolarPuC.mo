model SolarPuC
  Buildings.Fluid.SolarCollectors.Controls.BaseClasses.GCritCalc criSol(slope = per.slope, y_intercept = per.y_intercept)  annotation(
    Placement(transformation(origin = {-56, -6}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Fluid.SolarCollectors.Data.GenericSolarCollector per annotation(
    Placement(transformation(origin = {4, 0}, extent = {{60, 60}, {80, 80}})));
  Modelica.Blocks.Interfaces.RealOutput y(max = 1, min = 0, unit = "1") annotation(
    Placement(transformation(origin = {4, 0}, extent = {{100, -18}, {136, 18}}), iconTransformation(extent = {{100, -18}, {136, 18}})));
  Modelica.Blocks.Math.Add add(final k2 = -1) annotation(
    Placement(transformation(origin = {4, 0}, extent = {{-20, -10}, {0, 10}})));
  Modelica.Blocks.Interfaces.RealInput Tin annotation(
    Placement(transformation(origin = {4, 20}, extent = {{-140, -60}, {-100, -20}}), iconTransformation(origin = {0, 20}, extent = {{-140, -60}, {-100, -20}})));
  Modelica.Blocks.Interfaces.RealInput TEnv1 annotation(
    Placement(transformation(origin = {-116, 20}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 20}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput HSolDirN annotation(
    Placement(transformation(origin = {-116, 62}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 62}, extent = {{-20, -20}, {20, 20}})));
  Buildings.Utilities.Math.SmoothHeaviside smoHea(final delta = delY) annotation(
    Placement(transformation(origin = {66, 0}, extent = {{-20, -20}, {20, 20}})));
  Buildings.Fluid.SolarCollectors.Controls.SolarPumpController pumCon annotation(
    Placement(transformation(origin = {-40, -38}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(smoHea.y, y) annotation(
    Line(points = {{88, 0}, {122, 0}}, color = {0, 0, 127}));
  connect(add.y, smoHea.u) annotation(
    Line(points = {{5, 0}, {41, 0}}, color = {0, 0, 127}));
  connect(HSolDirN, add.u1) annotation(
    Line(points = {{-116, 62}, {-32, 62}, {-32, 6}, {-18, 6}}, color = {0, 0, 127}));
  connect(TEnv1, criSol.TEnv) annotation(
    Line(points = {{-116, 20}, {-68, 20}, {-68, 0}}, color = {0, 0, 127}));
  connect(Tin, criSol.TIn) annotation(
    Line(points = {{-116, -20}, {-68, -20}, {-68, -12}}, color = {0, 0, 127}));
  connect(criSol.G_TC, add.u2) annotation(
    Line(points = {{-44, -6}, {-18, -6}}, color = {0, 0, 127}));
  annotation(
    uses(Buildings(version = "8.1.3"), Modelica(version = "3.2.3")),
  Icon(graphics = {Rectangle(origin = {0, -2}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}})}));
end SolarPuC;
