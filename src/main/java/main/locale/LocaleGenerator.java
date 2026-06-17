package main.locale;

import main.locale.Defined.Category;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class LocaleGenerator {

    private static final String LOCATION = "C:\\Mods\\Factorio\\Crystarion";

    public static void main(String[] args) {
        new LocaleGenerator().generate();
    }

    public void generate() {
        Set<TypeAndName> names = findNames(Paths.get(LOCATION));
        verifyAllDefined(names);
        System.out.println();
        System.out.println("File");
        System.out.println();
        createLocaleFile();
    }

    private void createLocaleFile() {
        Map<Category, List<Defined.Locale>> defined = Defined.DEFINED;
        StringBuilder builder = new StringBuilder();
        for (Category category : Category.values()) {
            List<Defined.Locale> locales = defined.get(category);
            if (locales == null || locales.isEmpty()) {
                continue;
            }

            builder.append("[").append(category.getCategoryName()).append("]").append("\n");
            for (Defined.Locale locale : locales) {
                builder.append(locale.toEntry()).append("\n");
            }
        }
        System.out.println(builder);
    }

    private void verifyAllDefined(Set<TypeAndName> names) {
        Map<Category, Set<String>> foundNames = names.stream()
                .collect(Collectors.groupingBy(
                        TypeAndName::type,
                        Collectors.mapping(TypeAndName::name, Collectors.toSet())
                ));
        Map<Category, Set<String>> definedNames = Defined.DEFINED.entrySet().stream()
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        e -> e.getValue().stream()
                                .map(Defined.Locale::name)
                                .collect(Collectors.toSet())
                ));

        for (Category value : Category.values()) {
            System.out.println("For Category " + value);
            Set<String> foundCategoryNames = foundNames.get(value);
            Set<String> definedCategoryNames = definedNames.get(value);

            Set<String> namesNotDefined = new HashSet<>(foundCategoryNames);
            namesNotDefined.removeAll(definedCategoryNames);
            Set<String> definedNamesNotFound = new HashSet<>(definedCategoryNames);
            definedNamesNotFound.removeAll(foundCategoryNames);

            if (!namesNotDefined.isEmpty()) {
                System.out.println("Some names were not defined:");
                System.out.println(
                        namesNotDefined.stream()
                                .sorted()
                                .map(s -> String.format("new Locale(\"%s\",\"\"),", s))
                                .collect(Collectors.joining("\n"))
                );
            }

            if (!definedNamesNotFound.isEmpty()) {
                System.out.println("Some names were defined but are not found:");
                System.out.println(String.join("\n", definedNamesNotFound));
            }
        }

    }

    private Set<TypeAndName> findNames(Path searchPath) {
        try (Stream<Path> stream = Files.find(searchPath, 20, (p, _) -> p.toFile().getName().endsWith((".lua")))) {
            return stream
                    .map(this::analyse)
                    .flatMap(Collection::stream)
                    .collect(Collectors.toSet());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private List<TypeAndName> analyse(Path path) {
        try (Stream<String> lines = Files.lines(path)) {
            Pattern nameFinder = Pattern.compile("^-- locale ([^ ]+) ([^ ]+)");
            return lines
                    .takeWhile(nameFinder.asPredicate())
                    .map(nameFinder::matcher)
                    .filter(Matcher::matches)
                    .map(m -> new TypeAndName(Category.forName(m.group(1)), m.group(2)))
                    .toList();

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    record TypeAndName(Category type, String name) {
    }
}
