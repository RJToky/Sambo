package util;

public class Helper {
    public static String reformatDateTimeLocal(String dateTimeLocal) {
        StringBuilder output = new StringBuilder();
        output.append(dateTimeLocal.split("T")[0]).append(" ").append(dateTimeLocal.split("T")[1]).append(":00");
        return output.toString();
    }
}
