package main.energy;

public record Generator(int fluidUsagePerTick,
                        int maximumTemperature,
                        double effectivity) {
}