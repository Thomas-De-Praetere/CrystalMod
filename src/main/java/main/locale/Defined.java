package main.locale;

import java.util.List;
import java.util.Map;

public class Defined {

    public static final Map<Category, List<Locale>> DEFINED = Map.of(
            Category.ENTITY, List.of(
                    new Locale("crystarion-accumulator", "Megaccumulator"),
                    new Locale("crystarion-collector", "Collector"),
                    new Locale("crystarion-crusher", "Crusher"),
                    new Locale("crystarion-crusher-category", "Crusher"),
                    new Locale("crystarion-crystalizer", "Crystalizer"),
                    new Locale("crystarion-empowerer", "Empowerer"),
                    new Locale("crystarion-empowerer-category", "Empowerer"),
                    new Locale("crystarion-energiser", "Energizer"),
                    new Locale("crystarion-energiser-category", "Energiser"),
                    new Locale("crystarion-generator", "Flux Capacitator"),
                    new Locale("crystarion-land-mine", "Splinter Mine"),
                    new Locale("crystarion-lure", "Lure"),
                    new Locale("crystarion-lure-big", "Advanced Lure"),
                    new Locale("crystarion-naturizer", "Naturizer"),
                    new Locale("crystarion-naturizer-category", "Naturizer"),
                    new Locale("crystarion-nauvis", "Crystarion - Nauvis"),
                    new Locale("crystarion-resource-ice", "Ice Rock"),
                    new Locale("crystarion-rock", "Crystal Rock"),
                    new Locale("crystarion-rock-big", "Big Rock"),
                    new Locale("crystarion-rock-huge", "Huge Rock"),
                    new Locale("crystarion-rock-ice", "Ice Rock"),
                    new Locale("crystarion-rock-ice-big", "Big Ice Rock"),
                    new Locale("crystarion-rock-ice-huge", "Huge Ice Rock"),
                    new Locale("crystarion-smelter-category", "Smelter"),
                    new Locale("crystarion-spawner", "Crystosphere"),
                    new Locale("crystarion-biter", "Crystaloid"),
                    new Locale("crystarion-small-biter", "Small Crystaloid"),
                    new Locale("crystarion-medium-biter", "Crystaloid"),
                    new Locale("crystarion-big-biter", "Big Crystaloid"),
                    new Locale("crystarion-behemoth-biter", "Behemoth Crystaloid"),
                    new Locale("crystarion-small-spitter", "Small Crystalid"),
                    new Locale("crystarion-medium-spitter", "Crystalid"),
                    new Locale("crystarion-big-spitter", "Big Crystalid"),
                    new Locale("crystarion-behemoth-spitter", "Behemoth Crystalid"),
                    new Locale("crystarion-resource", "Crystaline remains"),
                    new Locale("crystarion-resource-ice-huge", "Huge Condensation Rock"),
                    new Locale("crystarion-resource-ice-big", "Big Condensation Rock"),
                    new Locale("crystarion-resource-ice-medium", "Condensation Rock"),
                    new Locale("crystarion-resource-small", "Crystaline remains"),
                    new Locale("crystarion-resource-medium", "Large Crystaline remains"),
                    new Locale("crystarion-resource-big", "Big Crystaline remains"),
                    new Locale("crystarion-resource-behemoth", "Huge Crystaline remains")
            ),
            Category.ITEM, List.of(
                    new Locale("crystarion-crystal-splinter-stablised","Stable Splinter"),
                    new Locale("crystarion-crystal-ammo-high-explosive", "High Explosive Crystaline Ammunition"),
                    new Locale("crystarion-science", "Unstable Science"),
                    new Locale("crystarion-science-stable", "Stable Science"),
                    new Locale("crystarion-science-unstable", "Unstable Science"),
                    new Locale("crystarion-science-volatile", "Volatile Science"),
                    new Locale("crystarion-crystal-ammo", "Crystaline Ammunition"),
                    new Locale("crystarion-crushed-crystal", "Crushed Crystal"),
                    new Locale("crystarion-crystal", "Crystal"),
                    new Locale("crystarion-crystal-red", "Red Crystal"),
                    new Locale("crystarion-crystal-blue", "Blue Crystal"),
                    new Locale("crystarion-crystal-green", "Green Crystal"),
                    new Locale("crystarion-crystal-magenta", "Magenta Crystal"),
                    new Locale("crystarion-crystal-cyan", "Cyan Crystal"),
                    new Locale("crystarion-crystal-yellow", "Yellow Crystal"),
                    new Locale("crystarion-crystal-ore", "Crystal Ore"),
                    new Locale("crystarion-condensation-rod", "Condensation Rod"),
                    new Locale("crystarion-energiser", "Energiser"),
                    new Locale("crystarion-lure", "Lure"),
                    new Locale("crystarion-lure-big", "Advanced Lure"),
                    new Locale("crystarion-crusher", "Crusher"),
                    new Locale("crystarion-naturizer", "Naturizer"),
                    new Locale("crystarion-condensation-rod-big", "Big Condensation Rod"),
                    new Locale("crystarion-condensation-rod-huge", "Huge Condensation Rod"),
                    new Locale("crystarion-empowerer", "Empowerer"),
                    new Locale("crystarion-collector", "Collector"),
                    new Locale("crystarion-land-mine", "Splinter Mine"),
                    new Locale("crystarion-condensation-rod-medium", "Condensation Rod"),
                    new Locale("crystarion-accumulator", "Megaccumulator"),
                    new Locale("crystarion-crystal-splinter", "Splinter"),
                    new Locale("crystarion-crystal-splinter-volatile", "Volatile Splinter"),
                    new Locale("crystarion-crystal-volatile", "Volatile Crystal"),
                    new Locale("crystarion-crystal-unstable", "Unstable Crystal"),
                    new Locale("crystarion-crystal-stable", "Stable Crystal")
            ),
            Category.FLUID, List.of(
                    new Locale("crystarion-crystal-slurry", "Hydrocryst"),
                    new Locale("crystarion-purple-mixture", "Viodyn Mist"),
                    new Locale("crystarion-yellow-mixture", "Amberlyne Blend"),
                    new Locale("crystarion-green-slurry", "Biocryst"),
                    new Locale("crystarion-blue-slurry", "Cryocryst"),
                    new Locale("crystarion-red-slurry", "Pyrocryst"),
                    new Locale("crystarion-plasma", "Plasmoflux")
            ),
            Category.SPACE_LOCATION, List.of(
                    new Locale("crystarion-planet", "Crystarion")
            ),
            Category.RECIPE, List.of(
                    new Locale("crystarion-crystal-splinter-stable","__ITEM__crystarion-crystal-splinter-stable__"),
                    new Locale("crystarion-explosive","Crystalid Explosive"),
                    new Locale("crystarion-sludge-from-crushed-crystal", "__FLUID__crystarion-crystal-slurry__ from __ITEM__crystarion-crushed-crystal__"),
                    new Locale("crystarion-crush-crystal-ore", "Crush __ITEM__crystarion-crystal-ore__"),
                    new Locale("crystarion-crystalise", "Crystalise"),
                    new Locale("crystarion-split-red", "Split off __ITEM__crystarion-crystal-red__"),
                    new Locale("crystarion-split-blue", "Split off __ITEM__crystarion-crystal-blue__"),
                    new Locale("crystarion-split-green", "Split off __ITEM__crystarion-crystal-green__"),
                    new Locale("crystarion-split-magenta", "Split __ITEM__crystarion-crystal-magenta__"),
                    new Locale("crystarion-split-cyan", "Split __ITEM__crystarion-crystal-cyan__"),
                    new Locale("crystarion-split-yellow", "Split __ITEM__crystarion-crystal-yellow__"),
                    new Locale("crystarion-crush-crystal-red", "Crush __ITEM__crystarion-crystal-red__"),
                    new Locale("crystarion-crush-crystal-blue", "Crush __ITEM__crystarion-crystal-blue__"),
                    new Locale("crystarion-crush-crystal-green", "Crush __ITEM__crystarion-crystal-green__"),
                    new Locale("crystarion-crush-crystal-cyan", "Crush __ITEM__crystarion-crystal-cyan__"),
                    new Locale("crystarion-crush-crystal-magenta", "Crush __ITEM__crystarion-crystal-magenta__"),
                    new Locale("crystarion-crush-crystal-yellow", "Crush __ITEM__crystarion-crystal-yellow__"),
                    new Locale("crystarion-neutralize-red", "Neutralize __ITEM__crystarion-crystal-red__"),
                    new Locale("crystarion-neutralize-blue", "Neutralize __ITEM__crystarion-crystal-blue__"),
                    new Locale("crystarion-neutralize-green", "Neutralize __ITEM__crystarion-crystal-green__"),
                    new Locale("crystarion-neutralize-crystal", "Neutralize __ITEM__crystarion-crystal__"),
                    new Locale("crystarion-slurry-from-red-crystal", "__FLUID__crystarion-red-slurry__ from __ITEM__crystarion-crystal-red__"),
                    new Locale("crystarion-slurry-from-blue-crystal", "__FLUID__crystarion-blue-slurry__ from  __ITEM__crystarion-crystal-blue__"),
                    new Locale("crystarion-slurry-from-green-crystal", "__FLUID__crystarion-green-slurry__ from  __ITEM__crystarion-crystal-green__"),
                    new Locale("crystarion-mix-purple", "Mix __FLUID__crystarion-blue-slurry__ and __FLUID__crystarion-red-slurry__"),
                    new Locale("crystarion-mix-yellow", "Mix __FLUID__crystarion-green-slurry__ and __FLUID__crystarion-red-slurry__"),
                    new Locale("crystarion-denaturize-yellow", "Denaturize __FLUID__crystarion-yellow-mixture__"),
                    new Locale("crystarion-denaturize-purple", "Denaturize __FLUID__crystarion-purple-mixture__"),
                    new Locale("crystarion-denaturize-red", "Denaturize __FLUID__crystarion-red-slurry__"),
                    new Locale("crystarion-denaturize-green", "Denaturize __FLUID__crystarion-green-slurry__"),
                    new Locale("crystarion-destabilize-crystal", "Destabilize __ITEM__crystarion-crystal__"),
                    new Locale("crystarion-destabilize-crystal-red", "Destabilize __ITEM__crystarion-crystal-red__"),
                    new Locale("crystarion-destabilize-crystal-green", "Destabilize __ITEM__crystarion-crystal-green__"),
                    new Locale("crystarion-destabilize-crystal-blue", "Destabilize __ITEM__crystarion-crystal-blue__"),
                    new Locale("crystarion-battery", "Crystaline __ITEM__battery__"),
                    new Locale("crystarion-accumulator", "__ITEM__crystarion-accumulator__"),
                    new Locale("crystarion-collector", "__ITEM__crystarion-collector__"),
                    new Locale("crystarion-condensation-rod-big", "__ITEM__crystarion-condensation-rod-big__"),
                    new Locale("crystarion-condensation-rod-huge", "__ITEM__crystarion-condensation-rod-huge__"),
                    new Locale("crystarion-condensation-rod-medium", "__ITEM__crystarion-condensation-rod-medium__"),
                    new Locale("crystarion-crusher", "Crusher"),
                    new Locale("crystarion-crystal-ammo", "__ITEM__crystarion-crystal-ammo__"),
                    new Locale("crystarion-crystal-empower-1", "Create __ITEM__crystarion-crystal-volatile__"),
                    new Locale("crystarion-crystal-empower-2", "Create __ITEM__crystarion-crystal-unstable__"),
                    new Locale("crystarion-crystal-empower-3", "Create __ITEM__crystarion-crystal-stable__"),
                    new Locale("crystarion-crystal-ore-splinter", "Splinter __ITEM__crystarion-crystal__"),
                    new Locale("crystarion-crystal-ore-splinter-less", "Splinter __ITEM__crystarion-crushed-crystal__"),
                    new Locale("crystarion-empowerer", "__ITEM__crystarion-empowerer__"),
                    new Locale("crystarion-energiser", "__ITEM__crystarion-energiser__"),
                    new Locale("crystarion-land-mine", "__ITEM__crystarion-land-mine__"),
                    new Locale("crystarion-lure", "__ITEM__crystarion-lure__"),
                    new Locale("crystarion-naturizer", "__ITEM__crystarion-naturizer__"),
                    new Locale("crystarion-revitalise-coal", "Revitalise Coal"),
                    new Locale("crystarion-science", "Create Unstable Science"),
                    new Locale("crystarion-lure-big", "__ITEM__crystarion-lure-big__"),
                    new Locale("crystarion-science-stable", "__ITEM__crystarion-science-stable__"),
                    new Locale("crystarion-science-volatile", "__ITEM__crystarion-science-volatile__"),
                    new Locale("crystarion-crystalise-purple", "Crystalise __ITEM__crystarion-crystal-magenta__"),
                    new Locale("crystarion-create-slurry", "Create Slurry"),
                    new Locale("crystarion-crystal-ore-splinter-volatile", "Volatile Splitting"),
                    new Locale("crystarion-crystal-ammo-high-explosive", "__ITEM__crystarion-crystal-ammo-high-explosive__")
            ),
            Category.TECHNOLOGY, List.of(
                    new Locale("crystarion-planet", "Crystarion"),
                    new Locale("crystarion-chemistry", "Crystaline Mixtures"),
                    new Locale("crystarion-unlock-biter", "Basic Crystaloid Biology"),
                    new Locale("crystarion-unlock-ice", "Basic Crystaline Structures"),
                    new Locale("crystarion-unlock-resource", "Crystal Industry"),
                    new Locale("crystarion-unlock-rod-big", "Crystaline Structures"),
                    new Locale("crystarion-unlock-rod-huge", "Advanced Crystaline Structures"),
                    new Locale("crystarion-unlock-science-volatile", "Volatile Crystal Industry"),
                    new Locale("crystarion-unlock-science-unstable", "Unstable Crystal Industry"),
                    new Locale("crystarion-unlock-science-stable", "Stable Crystal Industry"),
                    new Locale("planet-discovery-crystarion", "Crystarion"),
                    new Locale("crystarion-unlock-lure-big", "Advanced Crystaloid Biology"),
                    new Locale("crystarion-unlock-high-explosive-ammo", "Advanced Crystaloid Protection"),
                    new Locale("crystarion-unlock-megaccumulator", "Crystal Energy")
            ),
            Category.FUEL_CATEGORY, List.of(
                    new Locale("crystarion-volatile", "Crystal Power"),
                    new Locale("crystarion-explosive", "Explosive Power")
            ),
            Category.AIRBORNE_POLLUTANT, List.of(
                    new Locale("crystarion_resonance", "Resonance")
            )
    );

    public record Locale(String key, String name, String description, String withAmount) {
        public Locale(String key, String name) {
            this(key, name, "", name);
        }

        public String toName() {
            return key + "=" + name;
        }

        public String toDescription() {
            return key + "=" + name;
        }

        public String toAmount() {
            return key + "=" + name;
        }
    }

    public enum Category {
        ENTITY(true, false, false),
        ITEM(true, false, false),
        FLUID(true, false, false),
        SPACE_LOCATION(true, false, false),
        RECIPE(true, false, false),
        TECHNOLOGY(true, false, false),
        FUEL_CATEGORY(true, false, false),
        AIRBORNE_POLLUTANT(true, false, true);

        private final boolean hasName;
        private final boolean hasDescription;
        private final boolean hasAmount;

        Category(boolean hasName, boolean hasDescription, boolean hasAmount) {
            this.hasName = hasName;
            this.hasDescription = hasDescription;
            this.hasAmount = hasAmount;
        }

        public static Category forName(String string) {
            return switch (string.toUpperCase().replace("-", "_")) {
                case "ENTITY" -> ENTITY;
                case "ITEM" -> ITEM;
                case "FLUID" -> FLUID;
                case "SPACE_LOCATION" -> SPACE_LOCATION;
                case "RECIPE" -> RECIPE;
                case "TECHNOLOGY" -> TECHNOLOGY;
                case "FUEL_CATEGORY" -> FUEL_CATEGORY;
                case "AIRBORNE_POLLUTANT" -> AIRBORNE_POLLUTANT;
                default -> ENTITY;
            };
        }

        public boolean hasName() {
            return hasName;
        }

        public boolean hasDescription() {
            return hasDescription;
        }

        public boolean hasAmount() {
            return hasAmount;
        }

        public String getCategoryName() {
            return name().toLowerCase().replace("_", "-") + "-name";
        }

        public String getCategoryDescription() {
            return name().toLowerCase().replace("_", "-") + "-description";
        }

        public String getCategoryWithAmount() {
            return name().toLowerCase().replace("_", "-") + "-name-with-amount";
        }
    }
}
