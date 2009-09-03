module PeopleHelper

  def list_people(people)
    render :partial => 'people/person', :collection => people
  end

  def person_status(person)
    'online' if person.updated_at > 3.minutes.ago
  end

end