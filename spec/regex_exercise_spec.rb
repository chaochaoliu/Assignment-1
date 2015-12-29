require "regex_exercise"

RSpec.describe RegexExercise do 

  context ".phone_number?" do 
    context "valid" do 
      it "5555555555" do 
        expect(RegexExercise.phone_number?("5555555555")).to be_truthy
      end

      it "555-5555" do
        expect(RegexExercise.phone_number?("555-5555")).to be_truthy
      end

      it "(555) 555-5555" do 
        expect(RegexExercise.phone_number?("(555) 555-5555")).to be_truthy
      end

      it "555-555-5555" do 
        expect(RegexExercise.phone_number?("555-555-5555")).to be_truthy
      end
    end

    context "invalid" do 
      it "555555555" do 
        expect(RegexExercise.phone_number?("555555555")).to be_falsey # missing a digit
      end

      it "(555) 555-555" do 
        expect(RegexExercise.phone_number?("(555) 555-555")).to be_falsey
      end

      it "555a-555-5555" do
        expect(RegexExercise.phone_number?("555a-555-5555")).to be_falsey # extraneous digit
      end

      it "555*555-5555" do 
        expect(RegexExercise.phone_number?("555*555-5555")).to be_falsey # extraneous digit
      end

      it "55a-555-5555" do 
        expect(RegexExercise.phone_number?("55a-555-5555")).to be_falsey # extraneous digit
      end
    end   
  end

  context ".find_email" do 
    it "should find emails from string to an array" do
      expect(RegexExercise.find_email("john@mail.com to jane@mail.com")).to be == ["john@mail.com", "jane@mail.com"]
      expect(RegexExercise.find_email("why@ @chunkybacon.com why@chunkybacon.com")).to be == ["why@chunkybacon.com"]
      expect(RegexExercise.find_email("why @ @ why@chunkybacon")).to be == []
    end
  end

  context ".separate_with_comma" do 
    it "should separate number with comma every 3 digits" do 
      expect(RegexExercise.separate_with_comma(1)).to be == "1"
      expect(RegexExercise.separate_with_comma(10)).to be == "10"
      expect(RegexExercise.separate_with_comma(100)).to be == "100"
      expect(RegexExercise.separate_with_comma(1000)).to be == "1,000"
      expect(RegexExercise.separate_with_comma(10000)).to be == "10,000"
      expect(RegexExercise.separate_with_comma(100000)).to be == "100,000"
      expect(RegexExercise.separate_with_comma(1000000)).to be == "1,000,000"
    end
  end

  context ".string_to_2_d_array" do
    before :example do 
      doctor_map = "One: William Hartnell
            Two:Patrick Troughton
            Three:: Jon Pertwee
            Four: Tom Baker (longest run)
            5: Peter Davison
            six: Colin Baker
            Seven:   Sylvester McCoy
            Eight Paul McGann
            Nine: Christopher Eccleston *series reboot*
            Ten: David Tennant <- personal fav
            Eleven: Matthew Robert Smith - the current doctor"
      @doctors = RegexExercise.string_to_2_d_array(doctor_map)
    end

    it "should pass" do 
      expect(@doctors[0][1]).to be == "William Hartnell"
      expect(@doctors[4][1]).to be == "Peter Davison"
      expect(@doctors[3][1]).to be == "Tom Baker"
      expect(@doctors[4][0]).to be == "5"
      expect(@doctors[7][0]).to be == "Eight"
      expect(@doctors[9][1]).to be == "David Tennant"
      expect(@doctors[10][1]).to be == "Matthew Robert Smith"
    end 
  end
end

