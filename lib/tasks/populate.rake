# frozen_string_literal: true

namespace :db do
  desc 'Erase and fill database'
  task populate: :environment do
    require 'faker'

    Rake::Task['db:reset'].invoke

    def random_record(klass)
      records = klass.all

      records[rand(records.size)]
    end

    15.times do
      Course.create do |c|
        c.title = Faker::Educator.course_name
      end

      Group.create do |c|
        c.title = Faker::Educator.campus
        c.start_dt = Faker::Date.between(from: 5.days.ago, to: Date.today + 5.days)
      end

      CoursesGroup.create do |c|
        c.group_id = random_record(Group).id
        c.course_id = random_record(Course).id
      end

      Student.create do |c|
        c.name = Faker::Name.name
        c.lastname = Faker::Name.last_name
        c.email = Faker::Internet.email
      end

      GroupsStudent.create do |c|
        c.group_id = random_record(Group).id
        c.student_id = random_record(Student).id
      end
    end
  end
end
