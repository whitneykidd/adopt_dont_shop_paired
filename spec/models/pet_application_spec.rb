require 'rails_helper'

RSpec.describe PetApplication, type: :model do
  describe "relationships" do
    it {should belong_to :pet}
    it {should belong_to :application}
  end
end
# rails g migration CreatePetApplications pet:references application:references
# rails g migrations AddApprovedToPetApplications approved:boolean default:false