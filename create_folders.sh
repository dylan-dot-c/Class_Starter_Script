#Version 1.0.0
#Made By Dylan Heslop
#Last Updated 7:12PM 8/28/24

#!/bin/bash
# folders we want to create
folders=("HomeWork_1" "HomeWork_2" "HomeWork_3" "HomeWork_4" "Project_1" "Project_2")

for folder in "${folders[@]}";
do
  echo "Creating $folder"

  # creating each folder
  mkdir $folder

  # creating index.html style.css script.js files in each folder
  touch "$folder/index.html" "$folder/style.css" "$folder/script.js" "$folder/README.md"
  
  # writing template html
  cat <<EOF > "$folder/index.html"
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>$folder</title>
  <link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <h1>$folder</h1>
  <script src="script.js"></script>
</body>

</html>
EOF
done
  
