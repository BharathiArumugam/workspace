import java.util.*;
//import java.util.function.BiConsumer;
public class Main {
 private static Scanner ip;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ip = new Scanner(System.in);
		String option="";
		 Student s= new Student();
		 HashMap<Integer, Student> hash = new HashMap<Integer,Student>();
        do
         {
		 System.out.println("Enter the choice");
         System.out.println("1.Insert\n2.update\n3.Delete\n4.Display\n5.exit\n");
         int choice = ip.nextInt();
         ip.nextLine();
        
		//Student v  = new Student();
		switch(choice)
		{
		case 1:    System.out.println("Enter the number of student records to be inserted");
                   int records= ip.nextInt();
                   //Integer number = 1;
                   for(int index=0;index<records;index++)
                   {
                 	 System.out.println("Enter the ID");
                	 int id = ip.nextInt();
       	             ip.nextLine();
       	             System.out.println("Enter the name");
       	             String name =ip.nextLine();
       	             System.out.println("Enter the Department");
       	             String dept_name = ip.nextLine();
       	             System.out.println("Enter the CGPA");
       	             float cgpa = ip.nextFloat();
       	             ip.nextLine();
       	             Student student = new Student(id,name,dept_name,cgpa);
       	             hash.put(id, student);
       	             //number++;
                   }
                   break;
		case 2:    System.out.println("Enter the id for which you have to update");
				   int id_update = ip.nextInt();
				   ip.nextLine();
				  
				   for(int index = 1;index<hash.size();index++)
				   {
					  // System.out.println("hai");
				   if(hash.containsKey(id_update))
				   {
					   System.out.println("Enter which field to update\n1\t2\t3");
					   int opinion = ip.nextInt();
					   ip.nextLine();
					   if(opinion == 1)
					   {
						   System.out.println("Change the name");
						   String name_new=ip.nextLine();
						   s.setName(name_new);
						}
					   else if(opinion ==2)
					   {
						   System.out.println("Chagne the department");
						   String dept_new =ip.nextLine();
						   s.setDept(dept_new);
					   }
					   else if(opinion == 3)
					   {
						   System.out.println("Change the cgpa");
						   float cgpa_new = ip.nextFloat();
						   ip.nextLine();
						   s.setCgpa(cgpa_new);
					   }
					   else
						   System.out.println("Cannot be updated");
					  
				   }
				   }
				   break;
		case 3:    System.out.println("Enter the id for which record you want to delete");
				   int id_delete = ip.nextInt();
				   ip.nextLine();
				   hash.remove(id_delete);
				   break;
		case 4:    hash.forEach((key,v)->{
				    System.out.println("ID "+v.getId()+"\tName "+v.getName()+"\tDepartment "+v.getDept()+"\tCGPA"+v.getCgpa());
		            });
		           break;
		case 5:    System.exit(0);
		} 
		
		System.out.println("Do you want to continue");
		option = ip.nextLine();
		//System.out.println("option"+option);
         }while(option.equals("yes"));
		
		
		
	}

}
