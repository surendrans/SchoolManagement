class Student < ActiveRecord::Base
  attr_accessible :stud_firstname, :stud_lastname, :stud_sex, :stud_dob, :stud_father_name, :stud_guardian_name, :stud_address1, :stud_address2, :stud_state, :stud_pin, :country, :stud_identification, :stud_contact_number, :stud_blood_group, :stud_religion, :stud_nationality, :stud_mother_tounge, :stud_date_of_joining, :stud_active, :school, :sub_cast
  belongs_to :sub_cast
  belongs_to :school
end
