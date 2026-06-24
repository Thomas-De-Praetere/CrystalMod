package main.graphs;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.List;

public class CreateTable {
    public static void main(String[] args) throws IOException {
        new CreateTable().createTable();
    }

    public void createTable() throws IOException {
        List<String> list = Files.lines(Path.of("C:\\Mods\\Factorio\\src\\main\\java\\main\\graphs\\recipeOverview"))
                .map(s -> s.replace("-", "_"))
                .map(this::of)
                .map(Recipe::toPumlRecord)
                .toList();
        System.out.println("@startuml");
        System.out.println("hide methods");
        System.out.println("hide fields");
        System.out.println("hide circle");
        list.forEach(System.out::println);
        System.out.println("@enduml");
    }

    private Recipe of(String line) {
        String[] split = line.split("#");
        String tag = split[0];
        split = split[1].split("\\|");
        String name = split[0];
        split = split[1].split(":");
        List<String> input = Arrays.stream(split[0].split(",")).toList();
        List<String> output = Arrays.stream(split[1].split(",")).toList();
        return new Recipe(tag, name, input, output);
    }

    static int COUNTER = 0;

    record Recipe(String tag, String name, List<String> inputs, List<String> outputs) {

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
