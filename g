 public static void main(String[] args) throws IOException {
        File directory = new File("C:/Users/gy892/OneDrive/Pictures");
        File[] files = directory.listFiles();

        Map<String, byte[]> fileContents = new HashMap<>();

        for (File file : files) {
            parseFile(file.getAbsolutePath(),"java");
//            byte[] fileContent = Files.readAllBytes(Paths.get(file.getAbsolutePath()));
//            fileContents.put(file.getAbsolutePath(), fileContent);
        }

//        for (String fileName1 : fileContents.keySet()) {
//            byte[] fileContent1 = fileContents.get(fileName1);
//
//            for (String fileName2 : fileContents.keySet()) {
//                byte[] fileContent2 = fileContents.get(fileName2);
//
//                if (fileName1 != fileName2 && Arrays.equals(fileContent1, fileContent2)) {
//                    System.out.println("The files " + fileName1 + " and " + fileName2 + " have the same content.");
//                }
//            }
//        }
    }

    public static String parseFile(String fileName, String searchStr) throws FileNotFoundException {
        Scanner scan = new Scanner(new File(fileName));
         try {
             do {String line = scan.nextLine().toLowerCase().toString();
                 if(line.toLowerCase().contains(searchStr)){
                     System.out.println("Text found in this file :"+fileName);
                     return line;
                 }
             }
             while (scan.hasNext());
         }catch (Exception e){

         }

        return null;
    }

}
