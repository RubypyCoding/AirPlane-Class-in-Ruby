require 'airplane'

describe AirPlane do 

  let(:airplane) { AirPlane.new("Comercial", "Boeing")}

  describe "#initialize" do
    context "AirPlane is created" do
    	subject { AirPlane.new("Comercial", "Boeing") }

    	it(:type) { should_not be_nil}
    	it(:model)  { should_not be_nil}

    	it "creates a new AirPlane" do
    	  expect(airplane). to be_an_instance_of AirPlane
    	end
    end
  end

  describe "#speed_up" do
  	context "Checks if speed_up returns correct message" do
  	  it "#speed_up returns message 'Airplane has accelerated 20 kph.'" do
        expect(airplane.speed_up(20)).to eq("Airplane has accelerated 20 kph.")
  	  end
  	end
  end

  describe "#brake" do
  	context "Checks if brake returns correct message" do
  	  it "#brake returns message 'Airplane has decelerated 20 kph.'" do
        expect(airplane.brake(20)).to eq("Airplane has decelerated 20 kph.")
  	  end
  	end
  end

  describe "#shut_down" do
  	context "Checks if shut_down returns correct message" do
  	  it "#shut_down returns message 'Let's shut down to 0!'" do
        expect(airplane.shut_down).to eq("Let's shut down to 0!")
  	  end
  	end
  end

  describe "#current_speed" do
  	context "Checks if current_speed returns correct message" do
  	  it "#current_speed returns message 'Airplane goes 40 kph.' when speed_up increases 40" do
  	  	airplane.speed_up(40)
  	    expect(airplane.current_speed).to eq("Airplane goes 40 kph.")
  	  end
  	  it "#current_speed returns message 'Airplane goes 60 kph.' when speed_up increases 40 & 20" do
  	  	airplane.speed_up(40)
  	  	airplane.speed_up(20)
  	    expect(airplane.current_speed).to eq("Airplane goes 60 kph.")
  	  end
  	  it "#current_speed returns message 'Airplane goes 20 kph.' when brake decreases 10" do
  	  	airplane.speed_up(30)
  	  	airplane.brake(10)
  	    expect(airplane.current_speed).to eq("Airplane goes 20 kph.")
  	  end
  	  it "#current_speed returns message 'Airplane goes 0 kph.' when shut_down" do
  	  	airplane.speed_up(30)
  	  	airplane.shut_down
  	    expect(airplane.current_speed).to eq("Airplane goes 0 kph.")
  	  end
  	end
  end
end