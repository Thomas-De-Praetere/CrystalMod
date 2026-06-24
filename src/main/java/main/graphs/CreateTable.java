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
        String[] split = line.split("\\|");
        String name = split[0];
        split = split[1].split(":");
        List<String> input = Arrays.stream(split[0].split(",")).toList();
        List<String> output = Arrays.stream(split[1].split(",")).toList();
        return new Recipe(name, input, output);
    }

    record Recipe(String name, List<String> inputs, List<String> outputs) {
        String toPumlRecord() {
            StringBuilder builder = new StringBuilder();

            builder.append("[").append(name).append("]").append(" AS rec_").append(name).append(" #lightblue").append("\n");
            for (String input : inputs) {
                builder.append("[").append(input).append("]").append(" AS ").append(input).append("\n");
            }
            for (String output : outputs) {
                builder.append("[").append(output).append("]").append(" AS ").append(output).append("\n");
            }


            for (String input : inputs()) {
                builder.append(input).append(" --> rec_").append(name).append("\n");
            }
            for (String output : outputs()) {
                builder.append("rec_").append(name).append(" --> ").append(output).append("\n");
            }
            return builder.toString();
        }
    }

}
