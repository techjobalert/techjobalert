require 'spec_helper'

describe Post, focus: true do

  let(:valid_attributes) { Hash.new }

  describe "#title" do
    it { should respond_to :title }
  end

  describe "#create!" do
    
    it "increases Post count" do
      expect { Post.create!(valid_attributes) }.to change { Post.count }.by(1)
    end
  end

  describe "#destroy" do

    before { @post = Post.create!(valid_attributes) }

    it "decreases Post count" do
      expect { @post.destroy }.to change { Post.count }.by(-1)
    end
  end
end
