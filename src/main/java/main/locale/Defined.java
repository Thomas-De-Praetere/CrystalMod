package main.locale;

import java.util.List;
import java.util.Map;
import java.util.Set;

public class Defined {


    public static final Set<String> IGNORED = Set.of(
            "crystarion-denaturize-",
            "planet-discovery-crystarion",
            "crystarion-crush-crystal-",
            "crystarion-nauvis",
            "crystarion-neutralize-",
            "crystarion-crystalizer-category",
            "crystarion-crusher-category",
            "crystarion-energiser-category",
            "crystarion-destabilize-",
            "crystarion-slurry-from-"
    );

    public static final Set<String> GENERATED = Set.of(
            "crystarion-crush-crystal-red",
            "crystarion-neutralize-green",
            "crystarion-crush-crystal-green",
            "crystarion-denaturize-yellow",
            "crystarion-neutralize-red",
            "crystarion-neutralize-blue",
            "crystarion-crush-crystal-blue",
            "crystarion-destabilize-crystal",
            "crystarion-slurry-from-blue-crystal",
            "crystarion-slurry-from-green-crystal",
            "crystarion-destabilize-crystal-red",
            "crystarion-denaturize-green",
            "crystarion-slurry-from-red-crystal",
            "crystarion-destabilize-crystal-blue",
            "crystarion-denaturize-purple",
            "crystarion-denaturize-red",
            "crystarion-destabilize-crystal-green"
    );
    public static final Map<Category, List<Locale>> DEFINED = Map.of(
            Category.ENTITY, List.of(
                    new Locale("crystarion-energiser", "Energizer"),
                    new Locale("crystarion-crystalizer", "Crystalizer"),
                    new Locale("crystarion-crusher", "Crusher"),
                    new Locale("crystarion-generator", "Flux Capacitator"),
                    new Locale("crystarion-collector", "Collector"),
                    new Locale("crystarion-rock", "Crystal Rock"),
                    new Locale("crystarion-resource-ice", "Ice Rock"),
                    new Locale("crystarion-rock-ice", "Ice Rock")
            ),
            Category.ITEM, List.of(
                    new Locale("crystarion-crushed-crystal", "Crushed Crystal"),
                    new Locale("crystarion-crystal", "Crystal"),
                    new Locale("crystarion-crystal-red", "Red Crystal"),
                    new Locale("crystarion-crystal-blue", "Blue Crystal"),
                    new Locale("crystarion-crystal-green", "Green Crystal"),
                    new Locale("crystarion-crystal-magenta", "Magenta Crystal"),
                    new Locale("crystarion-crystal-cyan", "Cyan Crystal"),
                    new Locale("crystarion-crystal-yellow", "Yellow Crystal"),
                    new Locale("crystarion-crystal-ore", "Crystal Ore"),
                    new Locale("crystarion-condensation-rod", "Condensation Rod")
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
            Category.PLANT, List.of(
                    new Locale("crystarion-resource", "Crystaline remains")
            ),
            Category.UNIT, List.of(

                    new Locale("crystarion-biter", "Crystaloid")
            ),
            Category.SPACE_LOCATION, List.of(
                    new Locale("crystarion-planet", "Crystarion")
            ),
            Category.RECIPE, List.of(
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
                    new Locale("crystarion-battery", "Crystaline __ITEM__battery__")
            ));

    public record Locale(String name, String description) {
        public String toEntry() {
            return name + "=" + description;
        }
    }

    public enum Category {
        ENTITY,
        ITEM,
        FLUID,
        PLANT,
        UNIT,
        SPACE_LOCATION,
        RECIPE;


        public String getCategoryName() {
            return name().toLowerCase().replace("_", "-") + "-name";
        }
    }
}
