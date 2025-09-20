package main;

public record Fluid(UnitValue heatCapacity, int defaultTemperature, int maxTemperature) {
    public Fluid {
        if (!Unit.isCompatible(Unit.J, heatCapacity.unit())) {
            throw new IllegalStateException("Heatcapacity should be in J but was " + heatCapacity.unit());
        }
    }
}
