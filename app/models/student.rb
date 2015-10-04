class Student < User
  has_many :boxtops
  belongs_to :homeroom
end
