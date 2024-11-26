

# Step 1: # Define the path to your .tar file
tar_file_path <- "C:/Users/druschel/Downloads/GSE86941_RAW.tar"

# Create a new folder named "TAR_output"
output_folder <- "C:/Users/druschel/Downloads/TAR_output"
if (!dir.exists(output_folder)) {
  dir.create(output_folder)
}

# Extract the .tar file into the new folder
untar(tar_file_path, exdir = output_folder)

# List the extracted files
extracted_files <- list.files(output_folder, full.names = TRUE)
cat("Extracted files:\n", extracted_files, "\n")
