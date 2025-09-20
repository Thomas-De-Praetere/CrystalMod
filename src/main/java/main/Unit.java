package main;

import java.util.Set;

public enum Unit {
    J(1),
    kJ(1000),
    MJ(1000000),
    W(1),
    kW(1000),
    MW(1000000);
    private final double baseMultiplier;

    Unit(double baseMultiplier) {
        this.baseMultiplier = baseMultiplier;
    }

    public double getBaseMultiplier() {
        return baseMultiplier;
    }

    double convert(double value, Unit to) {
        if (!isCompatible(this, to)) {
            throw new IllegalStateException(this + " and " + to + " are not compatible.");
        }
        return value * (getBaseMultiplier() / to.getBaseMultiplier());
    }

    static boolean isJoule(Unit unit) {
        return Set.of(J, kJ, MJ).contains(unit);
    }

    static boolean isWatt(Unit unit) {
        return Set.of(W, kW, MW).contains(unit);
    }

    static boolean isCompatible(Unit unit1, Unit unit2) {
        if (unit1 == unit2) return true;
        return isJoule(unit1) && isJoule(unit2)
                || isWatt(unit1) && isWatt(unit2);
    }

    static Unit mostRelevant(UnitValue value) {
        Unit small, middle, large;
        if (isWatt(value.unit())) {
            small = W;
            middle = kW;
            large = MW;
        } else {
            small = J;
            middle = kJ;
            large = MJ;
        }
        double smallValue = value.convert(small).value();
        double middleValue = value.convert(middle).value();
        if (smallValue <= 1000.0) {
            return small;
        }
        if (1.0 <= middleValue && middleValue <= 1000.0) {
            return middle;
        }
        return large;
    }

}
