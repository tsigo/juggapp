require 'spec_helper'
include ApplicantsHelper

describe ApplicantsHelper, "class_icon" do
  it "should return the correct image for 'Death Knight'" do
    class_icon('Death Knight').should eql('classes/DeathKnight.png')
  end
end

describe ApplicantsHelper, "character_icon" do
  it "should return a URL string" do
    character_icon('Undead', 'Priest').should match(/wowarmory\.com/)
  end

  it "should map races to numbers" do
    character_icon('Undead', 'Something').should match(/0-5-\d\.gif$/)
  end

  it "should map classes to numbers" do
    character_icon('Something', 'Priest').should match(/0-\d-5\.gif$/)
  end
end
