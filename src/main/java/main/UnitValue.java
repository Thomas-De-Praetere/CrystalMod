package main;

public record UnitValue(double value, Unit unit) {
    @Override
    public String toString() {
        UnitValue convert = this.convert(Unit.mostRelevant(this));
        return convert.value() + convert.unit().name();
    }

    public UnitValue convert(Unit targetUnit) {
        if (targetUnit == unit) {
            return this;
        }
        return new UnitValue(unit.convert(value, targetUnit), targetUnit);
    }

    public UnitValue time(double value) {
        return new UnitValue(value() * value, unit);
    }

    public UnitValue add(UnitValue add) {
        if (!Unit.isCompatible(unit(), add.unit())) {
            throw new IllegalStateException();
        }
        UnitValue converted = add.convert(unit());
        return new UnitValue(value() + converted.value(), unit());
    }

    public UnitValue minus(UnitValue min) {
        return add(min.time(-1.0));
    }

    public static void main(String[] args) {
        UnitValue energy = new UnitValue(0.2, Unit.kJ);
        System.out.println(energy);
        System.out.println(energy.convert(Unit.J));
        System.out.println(energy.convert(Unit.MJ));
        UnitValue power = new UnitValue(0.2, Unit.kW);
        System.out.println(power);
        System.out.println(power.convert(Unit.W));
        System.out.println(power.convert(Unit.MW));
        try {
            energy.convert(Unit.MW);
            System.out.println("fail");
        } catch (IllegalStateException e) {
            System.out.println("succes");
        }
    }
}
