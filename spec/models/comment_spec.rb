require 'spec_helper'
 describe Comment do

    describe "when user_id is not present" do
    before { @comment.user_id = nil }
    it { should_not be_valid }
  end

    describe "with blank body" do
    before { @comment.body = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @comment.body = "q" * 141 }
    it { should_not be_valid }
  end


end
