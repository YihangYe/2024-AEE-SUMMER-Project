within ;
model cset
  inner Buildings.ThermalZones.EnergyPlus.Building building(idfName=
        Modelica.Utilities.Files.loadResource(
        "C:\ProgramData\DesignBuilder\Weather Data\cset.idf"), weaName=
        Modelica.Utilities.Files.loadResource(
        "C:\Program Files\OpenModelica1.22.3-64bit\Buildings 8.1.3\Resources\weatherdata\cset.mos"))
    annotation (Placement(transformation(
        extent={{-23,-23},{23,23}},
        rotation=0,
        origin={-105,29})));
  Buildings.ThermalZones.EnergyPlus.ThermalZone underground(zoneName=
        underground, redeclare package Medium = Modelica.Media.Air.MoistAir)
    annotation (Placement(transformation(extent={{42,108},{82,148}})));
  Modelica.Blocks.Sources.Constant const(k=0)
    annotation (Placement(transformation(extent={{-46,204},{-26,224}})));
  Buildings.ThermalZones.EnergyPlus.ThermalZone first_ground(zoneName=
        first_ground, redeclare package Medium = Modelica.Media.Air.MoistAir)
    annotation (Placement(transformation(extent={{42,58},{82,98}})));
  Buildings.ThermalZones.EnergyPlus.ThermalZone second_ground(zoneName=
        second_ground, redeclare package Medium = Modelica.Media.Air.MoistAir)
    annotation (Placement(transformation(extent={{42,6},{82,46}})));
  Buildings.ThermalZones.EnergyPlus.ThermalZone third_ground(zoneName=
        third_ground, redeclare package Medium = Modelica.Media.Air.MoistAir)
    annotation (Placement(transformation(extent={{42,-40},{82,0}})));
  Buildings.ThermalZones.EnergyPlus.ThermalZone fourth_ground(zoneName=
        fourth_ground, redeclare package Medium = Modelica.Media.Air.MoistAir)
    annotation (Placement(transformation(extent={{42,-90},{82,-50}})));
  Buildings.ThermalZones.EnergyPlus.ThermalZone fifth_ground(zoneName=
        fifth_ground, redeclare package Medium = Modelica.Media.Air.MoistAir)
    annotation (Placement(transformation(extent={{42,-140},{82,-100}})));
equation
  connect(const.y, underground.qGai_flow[0]) annotation (Line(points={{-25,214},
          {2,214},{2,88},{30,88},{30,138},{40,138}}, color={0,0,127}));
  connect(const.y, first_ground.qGai_flow[0]) annotation (Line(points={{-25,214},
          {2,214},{2,88},{40,88}}, color={0,0,127}));
  connect(const.y, second_ground.qGai_flow[0]) annotation (Line(points={{-25,
          214},{2,214},{2,88},{32,88},{32,36},{40,36}}, color={0,0,127}));
  connect(const.y, third_ground.qGai_flow[0]) annotation (Line(points={{-25,214},
          {2,214},{2,88},{32,88},{32,-10},{40,-10}}, color={0,0,127}));
  connect(const.y, fourth_ground.qGai_flow[0]) annotation (Line(points={{-25,
          214},{2,214},{2,88},{32,88},{32,-60},{40,-60}}, color={0,0,127}));
  connect(const.y, fifth_ground.qGai_flow[0]) annotation (Line(points={{-25,214},
          {2,214},{2,88},{26,88},{26,-110},{40,-110}}, color={0,0,127}));
  annotation (uses(Buildings(version="8.1.3"), Modelica(version="4.0.0")));
end cset;
