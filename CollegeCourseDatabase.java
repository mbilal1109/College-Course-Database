import java.util.*;
import java.sql.*;

public class CollegeCourseDatabase {

    public static void main(String[] args) {

        char retireveOrInsert, userDecision;
        String userEnters;

        Scanner scan = new Scanner(System.in);

        String[] tables = {"ComputerScience", "Math", "Science", "Professor"};


        do {

            System.out.println("***********************************************");
            System.out.print("Which table would you like to access: \n");
            System.out.println("***********************************************");
            System.out.print("0: ComputerScience\n1: Math\n2: Science\n3: Professor\n");
            System.out.println("***********************************************");

            userDecision = scan.next().charAt(0);
         
            if (userDecision == '0' || userDecision == '1' || userDecision == '2' || userDecision == '3') {


                System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                System.out.println("Would you like to retrieve or insert data from " + tables[Integer.parseInt(String.valueOf(userDecision))] + " table");
                System.out.println("1 for retrieving data" + "\n" + "2 for inserting data.");
                System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                retireveOrInsert = scan.next().charAt(0);


                if (retireveOrInsert == '1') {

                    retrieveTable(tables[Integer.parseInt(String.valueOf(userDecision))]);

                } else if (retireveOrInsert == '2') {

                    insertData(tables[Integer.parseInt(String.valueOf(userDecision))]);

                } else {

                    System.out.println("Please enter a valid option");

                }

            } else {

                System.out.println("Error : Please pick a valid option from the list");

            }


            System.out.println("Would you like to continue: Yes or No");
            userEnters = scan.next();
            System.out.println();


        }
        while (userEnters.equalsIgnoreCase("Yes"));
        System.out.println("Thank you for using College Course Database.");
        scan.close();

    }

    public static void retrieveTable(String tableName) { //This method retrieves data from the database for only ComputerScience, Math, and Science tables.

        try {
            
            String query;

            String url = "jdbc:mysql://cs.neiu.edu:3306/CS3152SP21_mbilal2?serverTimezone=UTC&";
            url += "user=CS3152SP21_mbilal2&password=mbilal2676223";

            Connection connect = DriverManager.getConnection(url);

            Statement statement = connect.createStatement();

            if(tableName.equals("Professor")) {
            
               query = "SELECT * FROM Professor";
               
               ResultSet rs1 = statement.executeQuery(query);
               
               while (rs1.next()) {
               
                  int roomNo = rs1.getInt("room");
                  String professor = rs1.getString("courseProf");
                  String email = rs1.getString("profEmail");
                  String phone = rs1.getString("phoneNo");
                  
                  System.out.println("Room: " + roomNo + "\tProfessor: " + professor + "\tProfessor Email: " + email +
                               "\tPhone number: " + phone);
                               
                  System.out.println();
               }
            
            }
            else {
            
               query = "SELECT * FROM " + tableName;
               
               ResultSet rs1 = statement.executeQuery(query);
            
               while (rs1.next()) {

                int courseNo = rs1.getInt("courseNo");
                String instructor = rs1.getString("instructor");
                double price = rs1.getDouble("coursePrice");
                String location = rs1.getString("location");
                String email = rs1.getString("profEmail");
                String name = rs1.getString("courseName");


                System.out.println("Course No: " + courseNo + "\tInstructor: " + instructor + "\tCourse Price: " +
                        price + "\tLocation: " + location + "\tProfessor Email: " + email + "\tCourse Name: "
                        + name);

                System.out.println();

            }
            
          }

        } catch (SQLException ex) {

            ex.printStackTrace();

        }
    }

    public static void insertData(String tableName) { //This method insert data into the database for ComputerScience, Math, and Science.

        Scanner scan = new Scanner(System.in);

        double coursePrice;
        int courseNumber, roomNo;
        String instructor, classLocation, profEmail, courseName, courseProf, phoneNo;
        
        try {
        
            String update;
            
            String url = "jdbc:mysql://cs.neiu.edu:3306/CS3152SP21_mbilal2?serverTimezone=UTC&";
            url += "user=CS3152SP21_mbilal2&password=mbilal2676223";
            
            Connection connect = DriverManager.getConnection(url);

            Statement statement = connect.createStatement();
        
            if(tableName.equals("Professor")) {
            
               System.out.print("Enter a room number: ");
               roomNo = scan.nextInt();
               
               System.out.print("Enter the course professor: ");
               courseProf = scan.nextLine();
               scan.nextLine();
               
               System.out.print("Enter the professor's email: ");
               profEmail = scan.nextLine();
               
               System.out.print("Enter the professor's phone number: ");
               phoneNo = scan.nextLine();
               System.out.println();
               
               
               update = "INSERT INTO Professor VALUES(" + roomNo + ", '" + courseProf + "', '" + profEmail + "', '" + phoneNo + "')";
               
               statement.executeUpdate(update);
            
            }
            else {
            
               System.out.print("Enter a course number: ");
               courseNumber = scan.nextInt();
            
               System.out.print("Enter the course price (Format should be 000.00): ");
               coursePrice = scan.nextDouble();
            
               System.out.print("Enter the instructor's name: ");
               instructor = scan.nextLine();
               scan.nextLine(); // Used to clear out the buffer
            
               System.out.print("Is the class online or in person: ");
               classLocation = scan.nextLine();
               //scan.nextLine(); 
            
               System.out.print("Enter the professor's email (email should end with dui.edu): ");
               profEmail = scan.next();
               scan.nextLine();
            
               System.out.print("Enter the courses name: ");
               courseName = scan.nextLine();
               System.out.println();
               
               update = "INSERT INTO " + tableName + " VALUES(" + courseNumber + ", '" + instructor + "', " + coursePrice + ", '" + classLocation + "', '" + profEmail + "', '" + courseName + "')";
            
               statement.executeUpdate(update);

            
            }
            
        } catch (SQLException ex) {

            ex.printStackTrace();

        }


    }
}