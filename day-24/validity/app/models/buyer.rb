class Buyer < ActiveRecord::Base

  def alcohol?
    calculate_age(self.date_of_birth) >= 21
  end

  def vote?
    calculate_age(self.date_of_birth) >= 18
  end

  def tobacco?
    calculate_age(self.date_of_birth) >= 18
  end

  def calculate_age(birthday)
    today = Date.today
    years = today.year - birthday.year

    dob_month = birthday.month
    dob_day = birthday.day

    years -= 1 if dob_month == today.month && dob_day < today.day
    years
  end

end
