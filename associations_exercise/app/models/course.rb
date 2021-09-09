# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    has_many :enrollments,
        primary_key: :id, # id in the Course class
        foreign_key: :course_id,
        class_name: :Enrollment

    has_many :enrolled_students,
        through: :enrollments,
        source: :user

    # has_one :prerequisite,
    #     primary_key: :prereq_id,
    #     foreign_key: :id,
    #     class_name: :Course

    belongs_to :prerequisite,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course,
        optional: true # ----->>> best practice

    has_one :instructor,
        primary_key: :instructor_id, # in the Course class
        foreign_key: :id, # id in the User class
        class_name: :User
end
