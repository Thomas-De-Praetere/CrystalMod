package main.locale;

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
        Set<String> names = findNames(Paths.get(LOCATION));
        verifyAllDefined(names);
        System.out.println();
        System.out.println("File");
        System.out.println();
        createLocaleFile();
    }

    private void createLocaleFile() {
        Map<Defined.Category, List<Defined.Locale>> defined = Defined.DEFINED;
        StringBuilder builder = new StringBuilder();
        for (Defined.Category category : Defined.Category.values()) {
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

    private void verifyAllDefined(Set<String> names) {
        Set<String> definedNames = Defined.DEFINED.values().stream()
                .flatMap(s -> s.stream())
                .map(l -> l.name())
                .collect(Collectors.toSet());
        Set<String> namesNotDefined = new HashSet<>(names);
        namesNotDefined.removeAll(definedNames);
        namesNotDefined.removeAll(Defined.IGNORED);
        Set<String> definedNamesNotFound = new HashSet<>(definedNames);
        definedNamesNotFound.removeAll(names);
        definedNamesNotFound.removeAll(Defined.GENERATED);

        if (!namesNotDefined.isEmpty()) {
            System.out.println("Some names were not defined:");
            System.out.println(namesNotDefined.stream().collect(Collectors.joining("\n")));
        }
        if (!definedNamesNotFound.isEmpty()) {
            System.out.println("Some names were defined but are not found:");
            System.out.println(definedNamesNotFound.stream().collect(Collectors.joining("\n")));
        }
    }

    private Set<String> findNames(Path searchPath) {
        try (Stream<Path> stream = Files.find(searchPath, 20, (p, a) -> p.toFile().getName().endsWith((".lua")))) {
            return stream
                    .map(this::analyse)
                    .flatMap(Collection::stream)
                    .filter(s -> s.contains("crystarion"))
                    .collect(Collectors.toSet());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private List<String> analyse(Path path) {
        try {
            List<String> strings = Files.readAllLines(path);
            List<String> names = new ArrayList<>();
            for (String string : strings) {
                extractName(string).ifPresent(names::add);
            }
            return names;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private Optional<String> extractName(String string) {
        Pattern nameFinder = Pattern.compile("^ *(?:[A-z]+\\.)*name = \"([^\"]*)\".*");
        Matcher matcher = nameFinder.matcher(string);
        if (matcher.matches()) {
            return Optional.of(matcher.group(1));
        }
        return Optional.empty();
    }

}
