package utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ReadConfigFile {

    protected static InputStream input = null;
    protected static Properties prop = null;

    public ReadConfigFile() {
        try {
            input = ReadConfigFile.class.getClassLoader().getResourceAsStream(Configs.CONFIG_PROPERTIES_DIRECTORY);
            prop = new Properties();
            prop.load(input);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}