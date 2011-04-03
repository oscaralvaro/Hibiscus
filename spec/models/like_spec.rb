require 'spec_helper'

describe Like do
  before(:each) do
    @like = Factory.build(:like)
  end
  
  describe "Required fields: " do    
    it "should be invalid without an associated post" do
      @like.post_id = nil
      @like.should be_invalid

      @like.post_id = ""
      @like.should be_invalid
       
      @like.post_id = " "
      @like.should be_invalid
    end
    
    it "should be invalid without a user" do
      @like.user = nil
      @like.should be_invalid
    end
    
    it "should be valid with a valid post associated" do
      @like.should be_valid
    end
  end
end
