package main;

import static main.Unit.*;

public class EnergyGeneration {
    /**
     * max_power = (min(fluid_max_temp, maximum_temperature) - fluid_default_temp)    temp
     * × fluid_usage_per_tick                                                       f/s
     * × fluid_heat_capacity                                                       J
     * × effectivity
     */
    UnitValue calculatePower(Generator generator, Fluid fluid) {
        return new UnitValue(
                (Math.min(generator.maximumTemperature(), fluid.maxTemperature()) - fluid.defaultTemperature())
                        * generator.fluidUsagePerTick() * 60.0
                        * fluid.heatCapacity().convert(J).value()
                        * generator.effectivity(),
                W
        );
    }

    public static void main(String[] args) {
        UnitValue continuesLaserTurretPowerRequirement = new UnitValue(3.86, MW);

        Generator generator = new Generator(10, 500, 1.0);
        Fluid plasma = new Fluid(new UnitValue(20, J), 0, 1000);

        double fluidProductionPerTickFromSingleMachine = 100.0 / 60.0;
        double machinePerGenerator = generator.fluidUsagePerTick() / fluidProductionPerTickFromSingleMachine;
        System.out.println("Expected Machines per generator: " + machinePerGenerator);
        UnitValue machineDrain = new UnitValue(150, kW).time(machinePerGenerator);
        System.out.println("Power usage of those machine " + machineDrain);

        UnitValue unitValue = new EnergyGeneration().calculatePower(generator, plasma);
        System.out.println("Total created power " + unitValue);
        System.out.println("Total remaining power " + unitValue.minus(machineDrain));
        System.out.println("Total supportedLaserTurrets " + unitValue.minus(machineDrain).convert(kW).value() / continuesLaserTurretPowerRequirement.convert(kW).value());

    }
}
