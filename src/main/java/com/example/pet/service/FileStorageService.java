package com.example.pet.service;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@Service
public class FileStorageService {

    private static final String UPLOAD_DIR = "src/main/resources/static/img/pets";

    public static String storeFile(MultipartFile file) throws IOException {
        if (file.isEmpty()) {
            throw new IOException("Failed to store empty file");
        }

        String filename = StringUtils.cleanPath(file.getOriginalFilename());
        Path uploadPath = Paths.get(UPLOAD_DIR);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }

        try (InputStream inputStream = file.getInputStream()) {
            Path filePath = uploadPath.resolve(filename);
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
            return filename;
        } catch (IOException e) {
            throw new IOException("Failed to store file " + filename, e);
        }
    }
}
