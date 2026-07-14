package main.graphs;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;


/**
 * Use
 * /c for _,p in  pairs(game.player.force.recipes) do helpers.write_file("test.txt",tostring(helpers.table_to_json({name=p.name,ingr=p.ingredients,pr=p.products})).."\n",true);end
 * to write all recipes.
 */
public class CreateTable {
    public static void main(String[] args) throws IOException {
        new CreateTable().createTable();
    }


    // Only the fields we care
    @JsonIgnoreProperties(ignoreUnknown = true)
    private record JsonRecipe(String tag, String name, List<Entry> ingr, List<Entry> pr) {
    }

    @JsonIgnoreProperties(ignoreUnknown = true)
    private record Entry(String name) {
    }

    public Recipe parse(String json) {
        ObjectMapper mapper = new ObjectMapper();
        try {
            JsonRecipe r = mapper.readValue(json, JsonRecipe.class);
            return new Recipe(
                    r.tag(),
                    r.name(),
                    r.ingr().stream()
                            .map(Entry::name)
                            .toList(),
                    r.pr().stream()
                            .map(Entry::name)
                            .toList()
            );
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    public void createTable() throws IOException {
        List<String> list = Files.lines(Path.of("C:\\Modding\\CrystalMod\\src\\main\\java\\main\\graphs\\recipeOverview"))
                .map(this::parse)
                .map(Recipe::toPumlRecord)
                .toList();
        System.out.println("@startuml");
        System.out.println("hide methods");
        System.out.println("hide fields");
        System.out.println("hide circle");
        list.forEach(System.out::println);
        System.out.println("@enduml");
    }


    static int COUNTER = 0;

    record Recipe(String tag, String name, List<String> inputs, List<String> outputs) {

        Recipe(String tag, String name, List<String> inputs, List<String> outputs) {
            this.tag = tag.replace("-", "_");
            this.name = name.replace("-", "_");
            this.inputs = inputs.stream().map(s -> s.replace("-", "_")).toList();
            this.outputs = outputs.stream().map(s -> s.replace("-", "_")).toList();
        }

        String toPumlRecord() {
            String i = tag();
            if (i.equals("S")) {
                i = "S" + COUNTER++;
            }

            StringBuilder builder = new StringBuilder();
            builder.append(String.format("[%s] AS rec_%s_%s #lightblue\n", name(), name(), i));
            for (String input : inputs()) {
                builder.append(String.format("[%s] AS %s_%s \n", input, input, i));
            }
            for (String output : outputs()) {
                builder.append(String.format("[%s] AS %s_%s \n", output, output, i));
            }

            for (String input : inputs()) {

                builder.append(String.format("%s_%s --> rec_%s_%s \n", input, i, name(), i));
            }
            for (String output : outputs()) {
                builder.append(String.format("rec_%s_%s --> %s_%s \n", name(), i, output, i));
            }
            return builder.toString();
        }
    }


}
