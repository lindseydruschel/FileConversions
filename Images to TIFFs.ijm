// Fiji Macro to batch convert images to TIFF format

// Prompt user to select the input folder
inputDir = getDirectory("Select input directory");
if (inputDir == "") {
    exit("No input directory selected.");
}

// Prompt user to select the output folder
outputDir = getDirectory("Select output directory");
if (outputDir == "") {
    exit("No output directory selected.");
}

// Get the list of files in the input directory
list = getFileList(inputDir);

// Loop through each file in the directory
for (i = 0; i < list.length; i++) {
    filePath = inputDir + list[i];
    
    // Check if the file is an image (you can add more extensions if needed)
    if (endsWith(list[i], ".jpg") || endsWith(list[i], ".png") || endsWith(list[i], ".bmp") || endsWith(list[i], ".gif")) {
        // Open the image
        open(filePath);
        
        // Save the image as a TIFF in the output directory
        saveAs("Tiff", outputDir + list[i] + ".tif");
        
        // Close the image to free memory
        close();
    }
}

print("Conversion complete! All images saved as TIFFs in " + outputDir);

