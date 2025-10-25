package main.energy;

public record Generator(double fluidUsagePerTick,
                        int maximumTemperature,
                        double effectivity) {
}